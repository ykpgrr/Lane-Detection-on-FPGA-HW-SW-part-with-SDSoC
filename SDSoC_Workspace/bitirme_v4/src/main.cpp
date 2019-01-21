//
//  main.cpp
//  Advance_Lane_Detection
//
//  Created by Yakup Gorur on 2/10/17.
//  Copyright © 2017 Yakup Gorur. All rights reserved.
//
#include <stdio.h>
#include <iostream>
#include <time.h>

#include "opencv2/opencv.hpp"
#include "opencv2/highgui.hpp"

#include <stdlib.h>
#include "sds_lib.h"
#include "xf_headers.h"
//#include "xf_warp_transform_config.h"
//#include "xf_threshold_config.h"
#include "xf_sobel_config.h"
//#include "xf_arithm_config.h"


#include "Preprocessing.hpp"
#include "Lane.hpp"
#include "Fitting_Second_Order.hpp"
#include "TimeAnalyze.hpp"

#ifndef HEIGHT
#define HEIGHT 480
#endif

#ifndef WIDTH
#define WIDTH 640
#endif





using namespace cv;
using namespace std;

string output_folder = "OUT/";

bool debug = false;
bool boolclk_preprocess = true; // PS
bool boolclk_video = true;      // PS
bool boolclk_preprocess_fpga = true; // PS + PL
bool boolclk_video_fpga = true;  // PS + PL


int xsize = 640, ysize = 480; // Frame width and height

int global = 1; //??
Mat M, Minv;

//Time analyze for pure PS
TimeAnalyze time_preprocess("Preprocess Function", boolclk_preprocess_fpga);
TimeAnalyze time_video("Video", boolclk_video);

//Time analyze for PS + PL
TimeAnalyze time_preprocess_fpga("Preprocess Function", boolclk_preprocess_fpga);
TimeAnalyze time_video_fpga("Video", boolclk_video);


Lane mylanes(ysize, xsize); // Detected Lanes

void processVideo(string videoFilename); // Pure PS
void ProcessVideoWithFPGA(string videoFilename); // PS + PL
void LineDetect(cv::Mat binary_warped, float* left_fit, float* right_fit);
void DrawLines(cv::Mat binary_warped, float* left_fit, float* right_fit);
void DrawLane(cv::Mat frame, cv::Mat &result, float* left_fit, float* right_fit);
void SlidingWindow(cv::Mat binary_warped);
void FollowLine(cv::Mat binary_warped);

void ProcessImage(string imagefilename);
void ProcessImageWithFPGA(string imagefilename);

int main(int argc, const char * argv[]) {

    // Source and Destination points for perspective transformation coefficients
    Point2f src[] = {Point2f(xsize*0.145, ysize), Point2f(xsize*0.44, ysize*0.65), Point2f(xsize*0.56, ysize*0.65), Point2f(xsize*0.88, ysize)};
    Point2f dst[] = {Point2f(xsize*0.20, ysize), Point2f(xsize*0.20, 0), Point2f(xsize*0.80, 0), Point2f(xsize*0.80, ysize)};
    
    // Calculate transformation matrices
    M = getPerspectiveTransform(src, dst);
    Minv = getPerspectiveTransform(dst, src);
    
    // Path an image file
    //string u_path_image = "/Users/yakup/Test_Input_Files/UD/frames/testimage.png";
    
    // Path a video file
    string u_path_video = "testvideo640480.mp4";
    string u_path_image = "test640480.jpg";
    // PURE PS
    ProcessImage(u_path_image);
    processVideo(u_path_video); //ProcessVideo
    time_preprocess.Print(); // time analayze for just preprocessing
    time_video.Print(); // time analyze for all processing video
    

    // PS + PL
    ProcessImageWithFPGA(u_path_image);
    //ProcessVideoWithFPGA(u_path_video); //Processvideo and accelerata with PL
    time_preprocess_fpga.Print(); // time analayze for just preprocessing (PL)
    time_video_fpga.Print(); // time analyze for all processing video
    
    return 0;
}

void processVideo(string videoFilename) {
    
    VideoCapture capture(videoFilename);    // Create the capture object

    // Is opened the video file
    if(!capture.isOpened()){
        //error in opening the video input
        cout << "Unable to open video file: " << videoFilename << endl;
        exit(EXIT_FAILURE);
    }

    
    VideoWriter outputVideo; // Create the writer object
    int ex = static_cast<int>(capture.get(CV_CAP_PROP_FOURCC)); // Get Codec Type- Int form
    
    // Create the output video file
    outputVideo.open(output_folder + "Software_output_test640480.mp4" , ex, capture.get(CV_CAP_PROP_FPS), Size(xsize, ysize), true);
    
    // Is created the output file
    if (!outputVideo.isOpened()){
        cout  << "Could not open the output video for write: " << videoFilename << endl;
        exit(EXIT_FAILURE);
    }
    
    // Create variables
    Mat frame, result;

    // Always reading frame
    while( capture.read(frame) ){
        
        time_video.Start();
        time_preprocess.Start();
       
        // Apply preprocessing
        Mat binary(xsize, ysize, CV_8UC1);
        binary = Preprocessing(frame);
        
        // Get perspective of image
        Mat binary_warped(xsize, ysize, CV_8UC1);
        warpPerspective(binary, binary_warped, M, Size(xsize, ysize), INTER_LINEAR);
        
        // Debug. Show Binary and warped image
        if (debug){
            cv::imwrite(output_folder + "Software_binary_warped.jpg", binary_warped);
            cv::namedWindow("Binary_Image", cv::WINDOW_NORMAL);
            imshow("Binary_Image", binary);
            cv::namedWindow( "binary_warped", cv::WINDOW_NORMAL);
            cv::moveWindow("binary_warped", 640, 200);
            imshow("binary_warped", binary_warped);
            cv::waitKey(0);
            cv::destroyAllWindows();
        }

        //Time analyze
        time_preprocess.Stop();
       
        
        // Detect Lines
        if(mylanes.detected_left || mylanes.detected_right){
            FollowLine(binary_warped);
        }
        else{
            SlidingWindow(binary_warped);
        }
        
        DrawLane(frame, result, mylanes.coefficient_left_current, mylanes.coefficient_right_current);
        
        //Time Analyze
        time_video.Stop();
        
        // Write result frame to output video
        outputVideo << result;
    }
    
    // relase objects
    capture.release();
    outputVideo.release();
    
}

void ProcessImage(string imagefilename) {


    // Create variables
    Mat frame, result;

	frame = imread(imagefilename);


    time_video.Start();
    time_preprocess.Start();

    // Apply preprocessing
    Mat binary(xsize, ysize, CV_8UC1);
    binary = Preprocessing(frame);

    // Get perspective of image
    Mat binary_warped(xsize, ysize, CV_8UC1);
    warpPerspective(binary, binary_warped, M, Size(xsize, ysize), INTER_LINEAR);

    // Debug. Show Binary and warped image
    if (debug){
        cv::imwrite(output_folder + "Software_binary_warped.jpg", binary_warped);
        cv::namedWindow("Binary_Image", cv::WINDOW_NORMAL);
        imshow("Binary_Image", binary);
        cv::namedWindow( "binary_warped", cv::WINDOW_NORMAL);
        cv::moveWindow("binary_warped", 640, 200);
        imshow("binary_warped", binary_warped);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }

    //Time analyze
    time_preprocess.Stop();


    // Detect Lines
    if(mylanes.detected_left || mylanes.detected_right){
        FollowLine(binary_warped);
    }
    else{
        SlidingWindow(binary_warped);
    }

    DrawLane(frame, result, mylanes.coefficient_left_current, mylanes.coefficient_right_current);

    //Time Analyze
    time_video.Stop();
    imwrite("sonuc.jpg", result);

}




void SlidingWindow(cv::Mat binary_warped){
    
    float left_fit[3], right_fit[3]; // Left and Right line
        
    // Set the width of the windows +/- margin
    int margin = 50;
    
    // Choose the number of sliding windows
    int nwindows = 18;
    
    // Set minimum number of pixels found to recenter window
    int minpix = 70;
    
    // Create empty lists to receive left and right lane pixel indices
    vector<int> left_lane_x_inds;
    vector<int> left_lane_y_inds;
    vector<int> right_lane_x_inds;
    vector<int> right_lane_y_inds;
    
    // Take a histogram of the bottom half of the image
    cv::Mat take_half= binary_warped.rowRange(binary_warped.rows/2,binary_warped.rows);
    cv::Mat histogram(cv::Mat::zeros(1, take_half.cols, CV_32F));
    
    // Histogram
    cv::reduce(take_half, histogram, 0, 0, CV_32F); // REDUCE_SUM flag equals to 0.
    
    // Find the peak of the left and right halves of the histogram
    // These will be the starting point for the left and right lines
    Mat left_histogram = histogram.colRange(0, histogram.cols/2);
    Mat right_histogram = histogram.colRange(histogram.cols/2, histogram.cols);
    
    //finding min-max location for left line
    double min_val_l, max_val_l;
    Point  max_loc_l;
    Point  min_loc_l;
    cv::minMaxLoc(left_histogram, &min_val_l, &max_val_l, &min_loc_l, &max_loc_l);
    
    //finding min-max location for right line
    double min_val_r, max_val_r;
    Point  max_loc_r;
    Point  min_loc_r;
    cv::minMaxLoc(right_histogram, &min_val_r, &max_val_r, &min_loc_r, &max_loc_r);

    // Set the height of windows
    int window_height = binary_warped.rows / nwindows;
    
    // Current positions to be updated for each window
    int l_current = max_loc_l.x;
    int r_current = max_loc_r.x + histogram.cols/2;
    
    if( ( ( r_current-l_current ) < 200 ) || ( ( r_current-l_current ) > 500 )){
        
        int l = * mylanes.left_lane_x_indis_recent [ mylanes.Getbuffer_Lane_X_Left() ];
        int r = * mylanes.right_lane_x_indis_recent[ mylanes.Getbuffer_Lane_X_Right()];
        
        if(l > 0 && r > 0 && r > l && r < xsize && l< xsize){
            l_current= l;
            r_current= r;
        }
        
    }
    
    // Create an output image to draw on and  visualize the result //for debug
    Mat out_img=binary_warped.clone();
    
    // Step through the windows one by one
    for(int window=0; window < nwindows; window++){
        
        // Identify window boundaries in x and y (and right and left)
        int win_y_low = binary_warped.rows - (window + 1) * window_height; // Top edge
        int win_y_high = binary_warped.rows - window * window_height;      // Bottom edge
        
        int win_xleft_low = l_current - margin;     //LEFT minumun (left edge)
        int win_xleft_high = l_current + margin;    //Left maximum (right edge)
        
        int win_xright_low = r_current - margin;    //Right maximum (left edge)
        int win_xright_high = r_current + margin;   //Right minumum (right edge)
        
        // Debug. Draw the windows on the visualization image
        if (debug){
            
            // a: Left Rectangle left Top Corner
            // b: Left Rectangle right Bottom Corner
            Point2d a(win_xleft_low, win_y_low), b(win_xleft_high, win_y_high);
            rectangle(out_img, a, b, cv::Scalar(255), 2); //a and b opposite direction //Drawing rectangle on out_img
            
            // Right Rectangle left Top Corner.
            a.x = win_xright_low;
            a.y = win_y_low;
            // Right Rectangle right Bottom Corner
            b.x = win_xright_high;
            b.y = win_y_high;
            rectangle(out_img, a, b, cv::Scalar(255), 2); // a and b opposite direction //Drawing rectangle on out_img
            
            cv::namedWindow( "box", cv::WINDOW_NORMAL);
            imshow("box", out_img);
            cv::waitKey(0);
            cv::destroyAllWindows();
        }
        
        Mat Roi;
        
        // Process Left Window
        if(win_xleft_low < 0){
            win_xleft_low=0;
        }
        
        if(win_xleft_high > xsize){
            win_xleft_high=xsize;
        }
        
        Rect RecLeft(win_xleft_low, win_y_low, win_xleft_high-win_xleft_low, window_height);
        Roi = binary_warped(RecLeft);   // ROI: Region of Interest
        std::vector<cv::Point2i> nonzero;
        
        findNonZero(Roi, nonzero);  // Find only white areas
        int sum = 0;
        for (std::vector<cv::Point2i>::iterator it = nonzero.begin(); it != nonzero.end(); ++it){
            int x;
            left_lane_y_inds.push_back((*it).y + win_y_low);    // Pushing Y point of white point in ROI
            x = (*it).x + win_xleft_low;
            left_lane_x_inds.push_back(x);                      // Pushing X point of white point in ROI
            sum += x;                                           // Sum of X indices of white point
        }
        
        // Evaluate if white points are sufficient
        if(nonzero.size() > minpix){
            l_current = int(sum / nonzero.size()); // Average of X indices of white points
            
            // Stop when the line goes to out of image
            if (l_current - margin <= 0){
                break;
            }
        }
        
        // Process Right Window
        if(win_xright_low < 0){
            win_xright_low=0;
        }
        if(win_xright_high> xsize){
            win_xright_high=xsize;
        }
        
        Rect RecRight(win_xright_low, win_y_low, win_xright_high-win_xright_low, window_height);
        Roi = binary_warped(RecRight); // ROI: Region of Interest
        
        nonzero.clear(); // Clear vector
        findNonZero(Roi, nonzero); // Find only white areas
        sum = 0;
        for (std::vector<cv::Point2i>::iterator it = nonzero.begin() ; it != nonzero.end(); ++it){
            int x;
            right_lane_y_inds.push_back((*it).y + win_y_low);   // Pushing Y point of white point in ROI
            x = (*it).x + win_xright_low;
            right_lane_x_inds.push_back(x);                     // Pushing X point of white point in ROI
            sum += x;                                           // Sum of X indices of white point
            
        }
        
        // Evaluate if white points are sufficient
        if(nonzero.size() > minpix){
            r_current = int(sum / nonzero.size()); // Average of X indices of white points
            
            // Stop when the line goes to out of image
            if (r_current + margin >= xsize){
                
                break;
            }
        }
    }
    
//TODO
    // If white points in the windows are so small.
    int thres = minpix;
    
    //    if( left_lane_y_inds.size() > thres){
    //        Fitting_Second_Order(left_lane_x_inds,left_lane_y_inds,left_fit);
    //        //        mylanes.detected_left=true;
    //    }
    //    else{
    //        // Use previoius line coefficients.
    //        mylanes.detected_left=false;
    //        //        left_fit= mylanes.coefficient_left_average;
    //    }
    //
    //    if(right_lane_y_inds.size() > thres ){
    //        Fitting_Second_Order(right_lane_x_inds,right_lane_y_inds,right_fit);
    //        //        mylanes.detected_right=true;
    //
    //        //adding the coefficients
    //        mylanes.AddCoefficent(left_fit, right_fit); //yanlışyerde
    //    }
    //    else{
    //        // Use previoius line coefficients.
    //        mylanes.detected_right=false;
    //        //        right_fit= mylanes.coefficient_left_average;
    //    }
    
    if( left_lane_y_inds.size() > thres && right_lane_y_inds.size() > thres){
        Fitting_Second_Order(left_lane_x_inds, left_lane_y_inds, left_fit);
        Fitting_Second_Order(right_lane_x_inds, right_lane_y_inds, right_fit);
        mylanes.AddCoefficent(left_fit, right_fit);
        DrawLines(binary_warped, left_fit, right_fit);
        
    }
    else{
        // Use previoius line coefficients.
        mylanes.detected_left  = false;
        mylanes.detected_right = false;
    }
    
}


void FollowLine(cv::Mat binary_warped){
    
    // Set the width of the line +/- margin
    // you approximately know where the lane from past frames
    int margin = 30;
    
    // Create empty lists to receive left and right lane pixel indices
    vector<int> left_lane_x_inds;
    vector<int> left_lane_y_inds;
    vector<int> right_lane_x_inds;
    vector<int> right_lane_y_inds;
    
    float* right_fit = mylanes.coefficient_right_current;
    float* left_fit  = mylanes.coefficient_left_current;
    vector<cv::Point2i> nonzero;
    
    for(int col = 0; col < ysize ; col++){
        
        // LEFT
        int x = (left_fit[0]) * pow(col,2) + (left_fit[1]) * col + (left_fit[2]);
        
        int xlow = x-margin;
        int xhigh = x+margin;
        
        if(xlow < 0){ xlow=0; }
        if(xlow > xsize){ xlow=xsize; }
        
        if(xhigh > xsize){ xhigh=xsize; }
        if(xhigh < 0){ xhigh=0; }
        
        Mat Row = binary_warped(Range(col, col+1), Range(xlow, xhigh));
        findNonZero(Row, nonzero);
        for (std::vector<cv::Point2i>::iterator it = nonzero.begin() ; it != nonzero.end(); ++it){
            left_lane_y_inds.push_back((*it).y + col);           // Pushing Y point of white point in Row
            left_lane_x_inds.push_back((*it).x + x-margin);  // Pushing X point of white point in Row
        }
        
        // RIGHT
        x = (right_fit[0]) * pow(col,2) + (right_fit[1]) * col + (right_fit[2]);
        
        xlow = x-margin;
        xhigh = x+margin;
        
        if(xlow < 0){ xlow=0; }
        if(xlow > xsize){ xlow=xsize; }
        
        if(xhigh > xsize){ xhigh=xsize; }
        if(xhigh < 0){ xhigh=0; }
        
        Row = binary_warped(Range(col, col+1), Range(xlow, xhigh));
        findNonZero(Row, nonzero);
        for (std::vector<cv::Point2i>::iterator it = nonzero.begin() ; it != nonzero.end(); ++it){
            right_lane_y_inds.push_back((*it).y + col);           // Pushing Y point of white point in Row
            right_lane_x_inds.push_back((*it).x + x-margin);  // Pushing X point of white point in Row
        }
    }
    
    //If white points in the windows are so small.
    int thres = 100;
    
    if( left_lane_y_inds.size() > thres && right_lane_y_inds.size() > thres){
        Fitting_Second_Order(left_lane_x_inds,left_lane_y_inds,left_fit);
        Fitting_Second_Order(right_lane_x_inds,right_lane_y_inds,right_fit);
        mylanes.AddCoefficent(left_fit, right_fit);
    }
    else{
        // Use previoius line coefficients.
        mylanes.detected_left=false;
        mylanes.detected_right=false;
    }
}


void DrawLines(cv::Mat binary_warped, float* left_fit, float* right_fit){
    Point left_line_points[1][720];
    Point right_line_points[1][720];
    for(int col=0; col<ysize ;col++){
        left_line_points[0][col] = Point( (left_fit[0]) * pow(col,2) + (left_fit[1]) * col + (left_fit[2]), col);
        right_line_points[0][col] = Point( (right_fit[0]) * pow(col,2) + (right_fit[1]) * col + (right_fit[2]), col);
    }
    
    const Point* ppt_left[1] = { left_line_points[0] };
    const Point* ppt_right[1] = { right_line_points[0] };
    int npt[] = { ysize };
    
    polylines(binary_warped, ppt_left, npt, 1, 0, Scalar( 255, 255, 255 ));
    polylines(binary_warped, ppt_right, npt, 1, 0, Scalar( 255, 255, 255 ));
    
    //    imshow("Image",binary_warped);
    //    waitKey(0);
}


void DrawLane(cv::Mat frame, cv::Mat &result, float* left_fit, float* right_fit){
    
    // Create an image to draw the lines on
    Mat color_warp(ysize, xsize, CV_8UC3, Scalar(0, 0, 0));
    
    // Generate example points
    Point lane_points[1][360];
    int counter = 0;
    for(int col=0 ; col<720 ;col+=4){
        lane_points[0][counter] = Point( (left_fit[0]) * pow(col,2) + (left_fit[1]) * col + (left_fit[2]), col);
        counter++;
    }
    for(int col=716 ; col>=0 ;col-=4){
        lane_points[0][counter] = Point( (right_fit[0]) * pow(col,2) + (right_fit[1]) * col + (right_fit[2]), col);
        counter++;
    }
    
    const Point* ppt[1] = { lane_points[0] };
    int npt[] = { 360 };
    fillPoly (color_warp, ppt, npt, 1, Scalar(0, 255, 0), 8);
    warpPerspective (color_warp, color_warp, Minv, Size(xsize, ysize), INTER_LINEAR);
    addWeighted(frame, 1, color_warp, 0.3, 0, result, -1);
    
    
    
    string down   =       ("Distance Between Right and Left Lines (Down)        : " + to_string( mylanes.distance_right_left_current[0]));
    string middle =       ("Distance Between Right and Left Lines (%80 Down)    : " + to_string( mylanes.distance_right_left_current[1]));
    
    string downcenterright =   ("Distance Between Right Line and Image Center (DOWN): " + to_string( mylanes.distance_right_center_current[0]) );
    string downcenterleft  =   ("Distance Between Left Line and Image Center (DOWN) : " + to_string( mylanes.distance_center_left_current[0]) );
    string coeffl = ("coeff left : " + to_string( mylanes.coefficient_left_current[0]) +" "+to_string( mylanes.coefficient_left_current[1]) +" "+ to_string( mylanes.coefficient_left_current[2]) );
    
    string coeffr = ("coeff right : " + to_string( mylanes.coefficient_right_current[0]) +" "+to_string( mylanes.coefficient_right_current[1]) +" "+ to_string( mylanes.coefficient_right_current[2]) );
    
    string coefflaverage = ("coeff avrege left : " + to_string( mylanes.coefficient_left_average[0]) +" "+to_string( mylanes.coefficient_left_average[1]) +" "+ to_string( mylanes.coefficient_left_average[2]) );
    
    ++global;
    if(global>2){
        int buffer= mylanes.Getbuffer_Lane_Calculations();
        
        if(buffer==0){ buffer=9;}
        else {--buffer;}
        
        string downL= ("previous Distance Between Right and Left Lines (Down)        : " + to_string( mylanes.distance_right_left_recent[buffer][0] ) );
        
        string downcenterrightL =   ("previous Distance Between Right Line and Image Center (DOWN): " + to_string( mylanes.distance_right_center_recent[buffer][0]) );
        string downcenterleftL  =   ("previous Distance Between Left Line and Image Center (DOWN) : " + to_string( mylanes.distance_center_left_recent[buffer][0]) );
        
        putText(result, downL, Point2f(100,250), FONT_HERSHEY_PLAIN, 1,  Scalar(255,255,0));
        putText(result, downcenterrightL, Point2f(100,290), FONT_HERSHEY_PLAIN, 1,  Scalar(255,255,0));
        putText(result, downcenterleftL, Point2f(100,320), FONT_HERSHEY_PLAIN, 1,  Scalar(255,255,0));
    }
    
    putText(result, down, Point2f(100,100), FONT_HERSHEY_PLAIN, 1,  Scalar(255,255,0));
    putText(result, middle, Point2f(100,130), FONT_HERSHEY_PLAIN, 1,  Scalar(255,255,255));
    putText(result, downcenterright, Point2f(100,160), FONT_HERSHEY_PLAIN, 1,  Scalar(255,255,0));
    putText(result, downcenterleft, Point2f(100,190), FONT_HERSHEY_PLAIN, 1,  Scalar(255,255,0));
    putText(result, coeffl, Point2f(100,350), FONT_HERSHEY_PLAIN, 1,  Scalar(255,255,255));
    putText(result, coeffr, Point2f(100,380), FONT_HERSHEY_PLAIN, 1,  Scalar(255,255,255));
    putText(result, coefflaverage, Point2f(100,410), FONT_HERSHEY_PLAIN, 1,  Scalar(255,255,255));
    
    if(mylanes.detected_right==false)
        putText(result, "---NOT DETECTED---", Point2f(70, 560), FONT_HERSHEY_DUPLEX, 1, Scalar(0,0,255));
    
    if(debug){
        imshow("result",result);
        waitKey();
    }
    
}

void ProcessVideoWithFPGA(string videoFilename) {
    
    VideoCapture capture(videoFilename);    // Create the capture object
    
    // Is opened the video file
    if(!capture.isOpened()){
        //error in opening the video input
        cout << "Unable to open video file: " << videoFilename << endl;
        exit(EXIT_FAILURE);
    }
    
    
    VideoWriter outputVideo; // Create the writer object
    int ex = static_cast<int>(capture.get(CV_CAP_PROP_FOURCC)); // Get Codec Type- Int form
    
    // Create the output video file
    outputVideo.open(output_folder +"FPGA_output_test640480.mp4" , ex, capture.get(CV_CAP_PROP_FPS), Size(xsize, ysize), true);
    
    // Is created the output file
    if (!outputVideo.isOpened()){
        cout  << "Could not open the output video for write: " << videoFilename << endl;
        exit(EXIT_FAILURE);
    }
    
    
    float *transform_matrix;
#if __SDSCC__
    transform_matrix=(float*)sds_alloc(9*sizeof(float));
#else
    transform_matrix=(float*)malloc(9*sizeof(float));
#endif
    
    transform_matrix[0] =  -0.58700204988312676;
    transform_matrix[1] =  -1.1180991781779399;
    transform_matrix[2] = 499.11947433289208;
    transform_matrix[3] = 4.9960036108132044e-16;
    transform_matrix[4] = -2.0545072145772867e+00;
    transform_matrix[5] = 6.4100625094811403e+02;
    transform_matrix[6] = 9.7578195523695399e-19;
    transform_matrix[7] = -3.5814115106292690e-03;
    transform_matrix[8] = 1;
    
    // Create variables
    Mat frame, result;
    
    // Always reading frame
    while( capture.read(frame) ){
        
        time_video_fpga.Start();
        time_preprocess_fpga.Start();
        
        
        Mat sourceHLS;
        cvtColor(frame, sourceHLS, COLOR_BGR2HLS);
        vector<Mat> channelsHLS (3);
        split(sourceHLS, channelsHLS);
    
        
        //FPGA
        unsigned short height = channelsHLS[0].rows;
        unsigned short width =  channelsHLS[0].cols;
    
        //Zero Image
        Mat zero_image = Mat::zeros(channelsHLS[1].size(), channelsHLS[1].type() );
        
        //Decleration of xfopencv variables
        xf::Mat<IN_TYPE , HEIGHT, WIDTH, NPC1> S_channel(height, width);
        xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> S_channel_threshold(height, width);
        xf::Mat<IN_TYPE , HEIGHT, WIDTH, NPC1> L_channel(height, width);
        xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> L_channel_x(height, width);
        xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> L_channel_y(height, width);
        xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> L_channel_sobelx_absolute(height, width);
        xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> zero_image_xf(height, width);
        xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> L_channel_threshold(height, width);
        xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> Bitwise_OR(height, width);
        xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> Perspective(height, width);
        L_channel.copyTo(channelsHLS[1].data);
        S_channel.copyTo(channelsHLS[2].data);
        zero_image_xf.copyTo(zero_image.data);
        



        sobel_accel(L_channel, L_channel_x, L_channel_y); // L Channel Sobel
        //arithm_accel(L_channel_x, zero_image_xf , L_channel_sobelx_absolute); // L Channel Absolute
        //threshold_accel(L_channel_sobelx_absolute, L_channel_threshold, 255, 255, 100); // L Channel Threshold
        //threshold_accel(S_channel, S_channel_threshold, 255, 255, 100); // S Channel Threshold
        //arithm_accel(S_channel_threshold, L_channel_threshold, Bitwise_OR); //BitwiseOr
        //warp_transform_accel(Bitwise_OR, Perspective, transform_matrix); //Perspective Transform True
        //perspective_accel(Bitwise_OR, Perspective, transform_matrix); //Perspective Transform

        // Get perspective of image
        Mat binary_warped(xsize, ysize, CV_8UC1);
        binary_warped.data = (unsigned char *)Perspective.copyFrom();
        
        // Debug. Show Binary and warped image
        if (debug){
            cv::imwrite(output_folder + "binary_warped.jpg", binary_warped);
            cv::namedWindow( "binary_warped", cv::WINDOW_NORMAL);
            cv::moveWindow("binary_warped", 640, 200);
            imshow("binary_warped", binary_warped);
            cv::waitKey(0);
            cv::destroyAllWindows();
        }
        
        //Time analyze
        time_preprocess_fpga.Stop();
        
        
        // Detect Lines
        if(mylanes.detected_left || mylanes.detected_right){
            FollowLine(binary_warped);
        }
        else{
            SlidingWindow(binary_warped);
        }
        
        DrawLane(frame, result, mylanes.coefficient_left_current, mylanes.coefficient_right_current);
        
        //Time Analyze
        time_video_fpga.Stop();
        
        // Write result frame to output video
        outputVideo << result;
    }
    
    // relase objects
    capture.release();
    outputVideo.release();
    
}

void ProcessImageWithFPGA(string ImageFilename) {

    // Create variables
    Mat frame, result;
	frame = imread(ImageFilename);

    float *transform_matrix;
#if __SDSCC__
    transform_matrix=(float*)sds_alloc(9*sizeof(float));
#else
    transform_matrix=(float*)malloc(9*sizeof(float));
#endif

    transform_matrix[0] =  -0.58700204988312676;
    transform_matrix[1] =  -1.1180991781779399;
    transform_matrix[2] = 499.11947433289208;
    transform_matrix[3] = 4.9960036108132044e-16;
    transform_matrix[4] = -2.0545072145772867e+00;
    transform_matrix[5] = 6.4100625094811403e+02;
    transform_matrix[6] = 9.7578195523695399e-19;
    transform_matrix[7] = -3.5814115106292690e-03;
    transform_matrix[8] = 1;

    time_video_fpga.Start();
    time_preprocess_fpga.Start();


    Mat sourceHLS;
    cvtColor(frame, sourceHLS, COLOR_BGR2HLS);
    vector<Mat> channelsHLS (3);
    split(sourceHLS, channelsHLS);


    //FPGA
    unsigned short height = channelsHLS[0].rows;
    unsigned short width =  channelsHLS[0].cols;

    //Zero Image
    Mat zero_image = Mat::zeros(channelsHLS[1].size(), channelsHLS[1].type() );

    //Decleration of xfopencv variables
    xf::Mat<IN_TYPE , HEIGHT, WIDTH, NPC1> S_channel(height, width);
    xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> S_channel_threshold(height, width);
    xf::Mat<IN_TYPE , HEIGHT, WIDTH, NPC1> L_channel(height, width);
    xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> L_channel_x(height, width);
    xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> L_channel_y(height, width);
    xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> L_channel_sobelx_absolute(height, width);
    xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> zero_image_xf(height, width);
    xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> L_channel_threshold(height, width);
    xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> Bitwise_OR(height, width);
    xf::Mat<OUT_TYPE, HEIGHT, WIDTH, NPC1> Perspective(height, width);
    L_channel.copyTo(channelsHLS[1].data);
    S_channel.copyTo(channelsHLS[2].data);
    zero_image_xf.copyTo(zero_image.data);


    sobel_accel(L_channel, L_channel_x, L_channel_y); // L Channel Sobel
    //arithm_accel(L_channel_x, zero_image_xf , L_channel_sobelx_absolute); // L Channel Absolute
    //threshold_accel(L_channel_sobelx_absolute, L_channel_threshold, 255, 255, 100); // L Channel Threshold
    //threshold_accel(S_channel, S_channel_threshold, 255, 255, 100); // S Channel Threshold
    //arithm_accel(S_channel_threshold, L_channel_threshold, Bitwise_OR); //BitwiseOr
    //warp_transform_accel(Bitwise_OR, Perspective, transform_matrix); //Perspective Transform True
    //perspective_accel(Bitwise_OR, Perspective, transform_matrix); //Perspective Transform


    Mat binary(xsize, ysize, CV_8UC1);
    binary.data = (unsigned char *)Bitwise_OR.copyFrom();

    Mat binary_warped(xsize, ysize, CV_8UC1);
    warpPerspective(binary, binary_warped, M, Size(xsize, ysize), INTER_LINEAR);
    // Get perspective of image


    // Debug. Show Binary and warped image
    if (debug){
        cv::imwrite(output_folder + "binary_warped.jpg", binary_warped);
        cv::namedWindow( "binary_warped", cv::WINDOW_NORMAL);
        cv::moveWindow("binary_warped", 640, 200);
        imshow("binary_warped", binary_warped);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }

    //Time analyze
    time_preprocess_fpga.Stop();


    // Detect Lines
    if(mylanes.detected_left || mylanes.detected_right){
        FollowLine(binary_warped);
    }
    else{
        SlidingWindow(binary_warped);
    }

    DrawLane(frame, result, mylanes.coefficient_left_current, mylanes.coefficient_right_current);

    //Time Analyze
    time_video_fpga.Stop();

    imwrite("fpga_sonuc.jpg", result);


}


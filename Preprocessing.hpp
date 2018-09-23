//
//  Preprocessing.hpp
//  Filter-Noise
//
//  Created by Yakup Görür on 31/07/2017.
//  Copyright © 2017 Yakup Görür. All rights reserved.
//

#ifndef Preprocessing_hpp
#define Preprocessing_hpp

#include <stdio.h>
#include "opencv2/opencv.hpp"
#include <vector>

using namespace std;

cv::Mat Preprocessing(cv::Mat& src){
    bool debug = false;

    cv::Mat sourceHLS;
    cv::Mat channels[3];
    cv::Mat gray;
    cv::Mat source;


    cv::cvtColor(src, gray, cv::COLOR_BGR2GRAY); //Convert to RGB2Gray
    
//Gray Scale Preprocess
    
    //Debug Gray Scale Image
    if(debug){
        cv::imwrite("Original.jpg", src);
        cv::namedWindow( "Gray Scale Image", cv::WINDOW_NORMAL );
        cv::imshow("Gray Scale Image", gray);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }
    
    cv::equalizeHist(gray, gray);   //Histogram equalization
    
    //Debug Histogram Equalization GrayScale
    if(debug){
        cv::namedWindow("Gray Scale Histogram Equalization", cv::WINDOW_NORMAL );
        cv::imshow("Gray Scale Histogram Equalization", gray);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }
    
    cv::inRange(gray, cv::Scalar(125), cv::Scalar(255), gray); //Take threshold
    
    //Debug Threshold GrayScale
    if(debug){
        cv::namedWindow("Gray Scale Histequ-> Threshold", cv::WINDOW_NORMAL );
        cv::imshow("Gray Scale Histequ-> Threshold", gray);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }


    
    cv::cvtColor(src, sourceHLS, cv::COLOR_BGR2HLS);    //Convert Image RGB2HLS
    split(sourceHLS, channels); //Split color channels(H - L - S)

//S Channel PreProcess.
    
    //Debug S channel channels[2].
    if(debug){
        cv::imwrite("S_Channel.jpg", channels[2]);
        cv::namedWindow( "S-Channel", cv::WINDOW_NORMAL );
        cv::imshow("S-Channel", channels[2]);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }

    cv::Mat S_channel(channels[2].size(), CV_8UC1);
    cv::inRange(channels[2], cv::Scalar(100), cv::Scalar(255), S_channel); //Take Threshold

    //Debug S channel Threshold channels[2].
    if(debug){
        cv::imwrite("Threshold_S_Channel.jpg", S_channel);
        cv::namedWindow( "Threshold- S Channel", cv::WINDOW_NORMAL );
        cv::imshow("Threshold- S Channel", S_channel);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }

//L channel Process.
    
    //Debug L channel channels[1].
    if(debug){
        cv::imwrite("L_Channel.jpg", channels[1]);
        cv::namedWindow( "L-Channel", cv::WINDOW_NORMAL );
        cv::imshow("L-Channel", channels[1]);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }

    
    cv::Mat L_channel_Sx(channels[1].size(), CV_32FC1);  //Derivative in x direction of L Channel
    cv::Sobel(channels[1], L_channel_Sx, CV_32FC1, 1, 0); //Get derivative in x direction
    
    //Debug L Channel Derivative (Sobel)
    if(debug){
        cv::imwrite("Sobel_L_Channel.jpg", L_channel_Sx);
        cv::namedWindow( "Sobel- L Channel", cv::WINDOW_NORMAL );
        cv::imshow("Sobel- L Channel", L_channel_Sx);
        cv::waitKey(0);
        
    }
    
    L_channel_Sx = cv::abs(L_channel_Sx);   //Take Absolute
    
    //Debug L Channel Sobel->Absolute
    if(debug){
        cv::imwrite("Sobel_L_Channel_absolute.jpg", L_channel_Sx);
        cv::namedWindow( "Sobel- L Channel-absolute", cv::WINDOW_NORMAL );
        cv::imshow("Sobel- L Channel-absolute", L_channel_Sx);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }

    
    double minVal, maxVal;
    minMaxLoc(L_channel_Sx, &minVal, &maxVal); //Find maximum value in image.
    
    cv::Mat L_channel(channels[1].size(), CV_8UC1); //Create Mat object to obtain L channel
    L_channel = L_channel_Sx.mul(255/maxVal); //Scale the L Channel between 0-255.

    //Debug L Channel Sobel->Absolute->Scale
    if(debug){
        cv::namedWindow("Sobel and Absolute and Scale- L Channel", cv::WINDOW_NORMAL );
        cv::imshow("Sobel and Absolute and Scale- L Channel", L_channel);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }

    
    cv::inRange(L_channel, cv::Scalar(20), cv::Scalar(100), L_channel); //Take Threshold

    //Debug L Channel Sobel->Absolute->Scale->Threshold
    if(debug){
        cv::imwrite("Threshold_L_Channel.jpg", L_channel);
        cv::namedWindow( "Threshold- L Channel", cv::WINDOW_NORMAL );
        cv::imshow("Threshold- L Channel", L_channel);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }


//L || S
    cv::Mat combined_result(channels[1].size(), CV_8UC1); //Create combined_resuult objet
    
    bitwise_or(S_channel, L_channel, combined_result); //Bitwise or between L and S channels
    
    //Debug L Channel BitwiseOR S Channel
    if(debug){
        //            cv::namedWindow( "S-Channel-resultS", cv::WINDOW_NORMAL );cv::imshow("S-Channel-resultS", resultS);
        //            cv::namedWindow( "L-Channel-resultL", cv::WINDOW_NORMAL );cv::imshow("L-Channel-resultL", resultL);
        cv::imwrite("bitwiseOR_S_Channel_L_Channel.jpg", combined_result);
        cv::namedWindow( "bitwiseOR- S Channel || L Channel", cv::WINDOW_NORMAL );
        cv::imshow("bitwiseOR- S Channel || L Channel", combined_result);
        cv::imshow("gray", gray);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }
    
//Gray & (L || S)
    bitwise_and(gray, combined_result, combined_result); //bitwise and GrayImage and (L || S)

    //Debug Gray Image BitwiseAND Combined Image
    if(debug){
        cv::namedWindow( "bitwiseAND- GRAY & (L||S)", cv::WINDOW_NORMAL );
        cv::imshow("bitwiseAND- GRAY & (L||S)", combined_result);
        cv::waitKey(0);
        cv::destroyAllWindows();
    }

    return combined_result; //Result of the Preprocess Function
}

#endif /* Preprocessing_hpp */

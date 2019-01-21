//
//  Lane.hpp


#ifndef Lane_hpp
#define Lane_hpp

#include <iostream>
#include <vector>
#include <math.h>
#include <list>
using namespace std;

class Lane
{
private:
    //How many recent elements you want to keep?
    int buffer;
    
    //For coefficients
    int buffer_coefficient;
    
    //For Detected X values on 3 point of frame
    int buffer_lane_x_l;
    int buffer_lane_x_r;
    
    //for CalculateLineDistance()
    int buffer_lane_calculations;

public:

    //Was the line detected in the last iteration?
    bool detected_right;
    bool detected_left;
    bool donotdraw;
    int y_size; //rows-height of frame
    int x_size; //cols-width of frame
    int image_center_x;

    //polynomial coefficients for the most recent fit
    //Current coefficients
    float coefficient_left_current[3];
    float coefficient_right_current[3];

    float* coefficient_left_recent_Mem_allocate;
    float* coefficient_right_recent_Mem_allocate;
    
    //Recent coefficients
    vector<float*> coefficient_left_recent;
    vector<float*> coefficient_right_recent;

    //polynomial coefficients averaged over the current "buffer" iterations
    //average coefficients
    float coefficient_left_average[3];
    float coefficient_right_average[3];


    //x values for detected left&rigth line pixels on 3 points
    //Current X_pixels
    int* left_lane_x_indis_current;
    int* right_lane_x_indis_current;

    //Recent X_pixels
    vector<int*> right_lane_x_indis_recent;
    vector<int*> left_lane_x_indis_recent;

    //distance between two line on 3 point on current frame
    //current distance left_right
    int* distance_right_left_current;

    //recent distance left_right
    vector<int*> distance_right_left_recent;

    //difference beetwen lines and camera center on 3 points.
    //current distance left&right - center
    int* distance_center_left_current;
    int* distance_right_center_current;

    //recent distance left&right - center.
    vector<int*> distance_center_left_recent;
    vector<int*> distance_right_center_recent;


    //Default constructur
    Lane(int row, int col);

    /**
     *   @brief Add coeffients of SecondOrder Polynom for left and right lines.
     *   @param left is an float* ,is LeftLine coefficients to keep left_fit[3]
     *   @param right is an float*,is RightLine coefficients to keep right_fit[3]
     */
    void AddCoefficent(float* left, float* right);

    //calculate distance on current frame.
    void CalculateLineDistances(float* left, float* right);


    /**
     *   @brief Calculate X Pixel of SecondOrder Polynom according to Y pixel.
     *   You have to indicate which line. (left or right)
     *   @param y is an int , y pixel value.
     *   @param which is an int, for left->0 for right->1
     */
//    int CalculateXCurrent(int y, int which);

    bool CheckIsItLane(float *left, float *right);

    int GetBuffer_Coefficient(){ return buffer_coefficient; };
    int Getbuffer_Lane_X_Left(){ return buffer_lane_x_l; };
    int Getbuffer_Lane_X_Right(){ return buffer_lane_x_r; };
    int Getbuffer_Lane_Calculations(){ return buffer_lane_calculations; };
    int GetXValue(float* fit, int col);
};

#endif /* Lane_hpp */

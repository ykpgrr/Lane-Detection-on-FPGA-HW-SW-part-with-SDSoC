//
//  TimeAnalyze.hpp
//  Advance_Lane_Detection_640_480
//
//  Created by Yakup Gorur on 3/7/18.
//  Copyright © 2018 Yakup Gorur. All rights reserved.
//

#ifndef TimeAnalyze_hpp
#define TimeAnalyze_hpp

#include <stdio.h>
#include <iostream>

using namespace std;

class TimeAnalyze
{
private:
    
    //starting point of time
    clock_t clk_start;
    
    //Total duration
    clock_t clk_total = 0;

    //duration of one lap
    clock_t clk_duration = 0;
    
    //maximum time in frames
    clock_t clk_maxtime = 0;
    
    //minumum time in frames
    clock_t clk_mintime = 100 * (double)CLOCKS_PER_SEC;
    
    //frame counter
    int framecounter = 0;
    
    //Analyze name
    string name;
    
    bool debug;
public:
    
    //Default Constructor
    TimeAnalyze(string _analyze_name, bool _debug, bool start = false);

    
    /**
     *   @brief Start Clock
     */
    void Start();
    
    /**
     *   @brief Stop Clock, Calculate duration, Add duration in Total duration
     *   and Control Max Min duration
     */
    void Stop();
    
    
    /**
     *   @brief Reset the staring point, ending point, frame counter, max_time and min_time
     */
    void Reset();
    
    
    /**
     *   @brief Calculate the timing analyze. And print total time, frame number, maximum time and minum time.
     */
    void Print();
    
};

#endif /* TimeAnalyze_hpp */

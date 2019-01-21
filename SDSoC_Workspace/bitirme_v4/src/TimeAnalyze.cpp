//
//  TimeAnalyze.cpp
//  Advance_Lane_Detection_640_480
//
//  Created by Yakup Gorur on 3/7/18.
//  Copyright © 2018 Yakup Gorur. All rights reserved.
//

#include "TimeAnalyze.hpp"

TimeAnalyze::TimeAnalyze(string _analyze_name, bool _debug, bool start){
    
    name = _analyze_name;
    debug = _debug;
    if(start)
        Start();
    
}

void TimeAnalyze::Start(){
    
    if(debug){
        clk_start = clock();
    }
}

void TimeAnalyze::Stop(){
    
    if(debug){
        clk_duration = clock() - clk_start;
        clk_total += clk_duration;
        
        if( clk_maxtime < clk_duration )
            clk_maxtime = clk_duration;
        
        if(clk_mintime > clk_duration)
            clk_mintime = clk_duration;
        
        framecounter++;
    }
}


void TimeAnalyze::Reset(){
    
    if(debug){
        clk_start = 0;
        clk_total = 0;
        clk_duration = 0;
        clk_maxtime = 0;
        clk_mintime = 100 * (double)CLOCKS_PER_SEC;
        framecounter = 0;
    }
}

void TimeAnalyze::Print(){
    
    if(debug)
    {
        cout<<endl
        <<"TIME ANALYZE NAME: " << name         <<endl
        <<"Number of Frame: "       << framecounter <<endl
        <<"Maximum Frame Duration (s): "    << (clk_maxtime /(double) CLOCKS_PER_SEC )
        <<"\nMinumum Frame Duration (s): "  << (clk_mintime /(double) CLOCKS_PER_SEC )
        <<"\nAverage Frame Duration (s): "  << (clk_total /(double) CLOCKS_PER_SEC ) / (double) framecounter
        <<"\nTOTAL TIME (s): "  << (clk_total / (double) CLOCKS_PER_SEC)
        <<endl << "------\n";
        
    }
}



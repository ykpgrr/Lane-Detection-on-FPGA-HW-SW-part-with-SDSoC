//
//  Lane.cpp
//  Lane_Detection(local)
//
//  Created by Yakup Görür on 08/08/2017.
//  Copyright © 2017. All rights reserved.
//

#include "Lane.hpp"

Lane::Lane(int row, int col){
    buffer=10;
    buffer_coefficient=-1;

    //for CalculateLineDistance()
    buffer_lane_calculations=-1;
    buffer_lane_x_l=-1;
    buffer_lane_x_r=-1;

    detected_right = false;
    detected_left = false;
    donotdraw=true;
    y_size=row;     //rows-height of frame
    x_size=col;     //cols-width of frame
    image_center_x = x_size/2; //Generally

    coefficient_left_recent.resize(buffer);
    coefficient_right_recent.resize(buffer);
    distance_center_left_recent.resize(buffer);
    distance_right_center_recent.resize(buffer);
    right_lane_x_indis_recent.resize(buffer);
    left_lane_x_indis_recent.resize(buffer);
    distance_right_left_recent.resize(buffer);

}

int Lane::GetXValue(float* fit, int col){
    return int( fit[0]*pow(col,2) + fit[1]*col + fit[2]);
}

bool Lane::CheckIsItLane(float *left, float *right){

    int XINTERVAL = 60; //floating of line rigt-left (Line sağa sola kayması)

    int l_lane_x[3], r_lane_x[3];
    l_lane_x[0] = GetXValue(left,  y_size);
    r_lane_x[0] = GetXValue(right, y_size);

    l_lane_x[1] = GetXValue(left,  (y_size*80) /100);
    r_lane_x[1] = GetXValue(right, (y_size*80) /100);

    l_lane_x[2] = GetXValue(left,  (y_size*50) /100);
    r_lane_x[2] = GetXValue(right, (y_size*50) /100);



    //right-left difference
    int minb, maxb;
    int diff_r_l[3];
    minb=
    maxb=
    diff_r_l[0] = ( r_lane_x[0] - l_lane_x[0] );
    diff_r_l[1] = ( r_lane_x[1] - l_lane_x[1] );
    diff_r_l[2] = ( r_lane_x[2] - l_lane_x[2] );

    for(int i=1; i<3; i++){
        if(diff_r_l[i]>maxb){
            maxb = diff_r_l[i];
        }
        if(diff_r_l[i]<minb){
            minb = diff_r_l[i];
        }
    }
    int diff_l[3], diff_r[3];
    int minl, maxl;


    minl=
    maxl=
    diff_l[0] = abs(l_lane_x[0] - left_lane_x_indis_recent[buffer_lane_x_l][0]);
    diff_l[1] = abs(l_lane_x[1] - left_lane_x_indis_recent[buffer_lane_x_l][1]);
    diff_l[2] = abs(l_lane_x[2] - left_lane_x_indis_recent[buffer_lane_x_l][2]);

    int minr, maxr;
    minr=
    maxr=
    diff_r[0] = abs(r_lane_x[0]- right_lane_x_indis_recent[buffer_lane_x_r][0]);
    diff_r[1] = abs(r_lane_x[1]- right_lane_x_indis_recent[buffer_lane_x_r][1]);
    diff_r[2] = abs(r_lane_x[2]- right_lane_x_indis_recent[buffer_lane_x_r][2]);

    //left ne kadar oynamış? right nekadar oynamış?
    for(int i=1; i<3; i++){
        if(diff_l[i]>maxl){
            maxl = diff_l[i];
        }
        if(diff_l[i]<minl){
            minl = diff_l[i];
        }


        if(diff_r[i]>maxr){
            maxr = diff_r[i];
        }
        if(diff_r[i]<minr){
            minr = diff_r[i];
        }

    }


/* TODO Is it Lane
     
    //Conditions:
    //Gürültüden bozulmayı azaltır bu condition.
    //Right X_index aynı değermi?
    if(maxr < XINTERVAL){ //AYNI

        //Left X_index aynı değermi?
        if (maxl < XINTERVAL) { // Aynı [1,1]
            //Recente ekle ikisinide. //recente ekleme burada henüz olmuyor. Ama addcoefficient'da oluyor
        } else { //Aynı Değil [1,0]
            //Left'i Recent'ten çek. Right'ı ekle. //recente ekleme burada henüz olmuyor. Ama addcoefficient'da oluyor
            left= coefficient_left_recent[buffer_coefficient];
        }
    }
    else{   //AYNI DEĞİL
        //Left X_index aynı değermi?
        if (maxl < XINTERVAL) { // Aynı [0,1]
            //Right'i Recent'ten çek. Left'i ekle.
            right=coefficient_right_recent[buffer_coefficient];
        } else { //Aynı Değil [0,0]
            //Birşey yapma next condition yapar zaten.
        }

    }
    
*/



    //Lane genişliği uygun mu?
    if ( ( (maxb-minb) > 350) || (minb < 200) || (maxb > 975) ) { //değil
        //Eski iki değeri al yada başarız
        return false;
    } else {
        //süper. Şerit Değişikliğini kontrol ettin mi? Bir sonraki condition.//TODO
        return true;
    }

}

void Lane::AddCoefficent(float *left, float *right){

    //for first frame
    if(buffer_lane_x_r==-1 || buffer_lane_x_l==-1){
        detected_left = detected_right = true;
        CalculateLineDistances(left, right);
    }

    if( CheckIsItLane(left, right) ) {
        //Adding right & left lane coefficients
        coefficient_left_current[0]  = left[0];
        coefficient_left_current[1]  = left[1];
        coefficient_left_current[2]  = left[2];

        coefficient_right_current[0] = right[0];
        coefficient_right_current[1] = right[1];
        coefficient_right_current[2] = right[2];


        //ADDING RECENT COEFFECIENT (little bit complicated)
        //Note:dynamic memory to keep the recent coefficents in vector
        coefficient_left_recent_Mem_allocate  = new float [3];
        coefficient_right_recent_Mem_allocate = new float [3];

        coefficient_left_recent_Mem_allocate[0] = left[0];
        coefficient_left_recent_Mem_allocate[1] = left[1];
        coefficient_left_recent_Mem_allocate[2] = left[2];

        coefficient_right_recent_Mem_allocate[0] = right[0];
        coefficient_right_recent_Mem_allocate[1] = right[1];
        coefficient_right_recent_Mem_allocate[2] = right[2];


        //index increase
        ++buffer_coefficient;

        buffer_coefficient %= buffer;


        //Average calculation
        //( (average*10) - SonDeğer + YeniDeğer ) /10
        if(coefficient_right_recent [buffer_coefficient] != NULL){
            //Right yeni değer
            float *Dright= coefficient_right_recent [buffer_coefficient];
            //Left yeni değer
            float *Dleft= coefficient_left_recent [buffer_coefficient];


            coefficient_left_average[0] =  ( (coefficient_left_average[0]*10) + coefficient_left_recent_Mem_allocate[0] - Dleft[0]  ) / (10);

            coefficient_left_average[1] = ( (coefficient_left_average[1]*10) + coefficient_left_recent_Mem_allocate[1] - Dleft[1]  ) / (10);
            coefficient_left_average[2] = ( (coefficient_left_average[2]*10) + coefficient_left_recent_Mem_allocate[2] - Dleft[2]  ) / (10);
            coefficient_right_average[0] = ( (coefficient_right_average[0]*10) + coefficient_right_recent_Mem_allocate[0] - Dright[0]  ) / (10);
            coefficient_right_average[1] = ( (coefficient_right_average[1]*10) + coefficient_right_recent_Mem_allocate[1] - Dright[1]  ) / (10);
            ;
            coefficient_right_average[2] = ( (coefficient_right_average[2]*10) + coefficient_right_recent_Mem_allocate[2] - Dright[2]  ) / (10);
            ;

        }
        //just for first "buffer" time (Daha ilk circle dolmadan)
        // ((ilkdeğer * buffer) + yeni değer ) / (buffer+1)
        else{
            coefficient_left_average[0]  = ( (coefficient_left_average[0]*buffer_coefficient ) + coefficient_left_recent_Mem_allocate[0]  ) / (buffer_coefficient +1);
            coefficient_left_average[1]  = ( (coefficient_left_average[1]*buffer_coefficient ) + coefficient_left_recent_Mem_allocate[1]  ) / (buffer_coefficient +1);
            coefficient_left_average[2]  = ( (coefficient_left_average[2]*buffer_coefficient ) + coefficient_left_recent_Mem_allocate[2]  ) / (buffer_coefficient +1);
            coefficient_right_average[0] = ( (coefficient_right_average[0]*buffer_coefficient) + coefficient_right_recent_Mem_allocate[0] ) / (buffer_coefficient +1);
            coefficient_right_average[1] = ( (coefficient_right_average[1]*buffer_coefficient) + coefficient_right_recent_Mem_allocate[1] ) / (buffer_coefficient +1);
            coefficient_right_average[2] = ( (coefficient_right_average[2]*buffer_coefficient) + coefficient_right_recent_Mem_allocate[2] ) / (buffer_coefficient +1);
        }

        //Note:First deleting the memory then adding on the current index
        //Adding Recent right & left lane coefficients
        delete [] coefficient_left_recent [ (buffer_coefficient) ] ;
        delete [] coefficient_right_recent [ (buffer_coefficient) ] ;
        coefficient_left_recent [ (buffer_coefficient) ] = coefficient_left_recent_Mem_allocate;
        coefficient_right_recent [ (buffer_coefficient) ] = coefficient_right_recent_Mem_allocate;

        detected_left=true;
        detected_right=true;

//        //hiç girmiyor.
//        if(!(CheckIsItLane(coefficient_left_average, coefficient_right_average) )){
//            coefficient_right_average[2]=0;
//            coefficient_right_average[1]=0;
//            coefficient_right_average[0]=0;
//            coefficient_left_average[2]=0;
//            coefficient_left_average[1]=0;
//            coefficient_left_average[0]=0;
//        }
        //Calculate Line Distance now
        CalculateLineDistances(coefficient_left_current,coefficient_right_current);
    }
    else{
        coefficient_left_current[0] = coefficient_left_average[0];
        coefficient_left_current[1] = coefficient_left_average[1];
        coefficient_left_current[2] = coefficient_left_average[2];

        coefficient_right_current[0] = coefficient_right_average[0];
        coefficient_right_current[1] = coefficient_right_average[1];
        coefficient_right_current[2] = coefficient_right_average[2];

        //Hiç girmiyor.
        if(!(CheckIsItLane(coefficient_left_average, coefficient_right_average) )){
            coefficient_left_current[0]=0;
            coefficient_left_current[1]=0;
            coefficient_left_current[2]=0;
            coefficient_right_current[2]=0;
            coefficient_right_current[1]=0;
            coefficient_right_current[0]=0;
        }
        //will be sliding windows to next frame
        detected_right = false;
        detected_left  = false;

        //To show just on window some calculations. Not related algoritms
        CalculateLineDistances(coefficient_left_current,coefficient_right_current);

    }
}


//Ekleme yapmayacak. CheckIsItLane() true ve false gelsede bu fonksiyona giriliyor.
//False geldiği durumda _recent değerlere ekleme yapmaması lazım.
//şuanda yapılan eklemeler kullanılmadığı için sorun yok.
void Lane::CalculateLineDistances(float* left, float* right){


    int temp_l_x_indis[3];
    int temp_r_x_indis[3];

    temp_l_x_indis[0]  = GetXValue(left,  y_size);
    temp_r_x_indis[0] = GetXValue(right, y_size);

    temp_l_x_indis[1]  = GetXValue(left,  (y_size*80) / 100);
    temp_r_x_indis[1] = GetXValue(right, (y_size*80) / 100);

    temp_l_x_indis[2]  = GetXValue(left,  (y_size*40) / 100);
    temp_r_x_indis[2] = GetXValue(right, (y_size*40) / 100);


    if(detected_right==true && detected_left==true){



        //Adding right & left lane x_indis
        left_lane_x_indis_current  = new int[3];
        right_lane_x_indis_current = new int[3];


        left_lane_x_indis_current[0]  = temp_l_x_indis[0];
        right_lane_x_indis_current[0] = temp_r_x_indis[0];

        left_lane_x_indis_current[1]  = temp_l_x_indis[1];
        right_lane_x_indis_current[1] = temp_r_x_indis[1];

        left_lane_x_indis_current[2]  =temp_l_x_indis[2];
        right_lane_x_indis_current[2] = temp_r_x_indis[2];

        //index increase
        ++buffer_lane_x_l;
        ++buffer_lane_x_r;


        //if index bigger than buffer then turn head
        buffer_lane_x_l %= buffer;
        buffer_lane_x_r %= buffer;

        //Note:First deleting the memory then adding on the current index

        //Adding right & left lane x_indis (recent)
        delete [] left_lane_x_indis_recent [ (buffer_lane_x_l) ];
        delete [] right_lane_x_indis_recent [ (buffer_lane_x_r) ];

        left_lane_x_indis_recent [ (buffer_lane_x_l) ] = left_lane_x_indis_current;
        right_lane_x_indis_recent [ (buffer_lane_x_r) ] = right_lane_x_indis_current;
    }
    else if (detected_right==true){

        right_lane_x_indis_current = new int[3];

        right_lane_x_indis_current[0] = temp_r_x_indis[0];
        right_lane_x_indis_current[1] = temp_r_x_indis[1];
        right_lane_x_indis_current[2] = temp_r_x_indis[2];

        //index increase
        ++buffer_lane_x_r;

        //if index bigger than buffer then turn head
        buffer_lane_x_r %= buffer;

        //Note:First deleting the memory then adding on the current index
        //Adding right lane x_indis (recent)
        delete [] right_lane_x_indis_recent [ (buffer_lane_x_r) ];

        right_lane_x_indis_recent [ (buffer_lane_x_r) ] = right_lane_x_indis_current;
    }
    else if (detected_left==true){

        //Adding right & left lane x_indis
        left_lane_x_indis_current  = new int[3];


        left_lane_x_indis_current[0]  = temp_l_x_indis[0];
        left_lane_x_indis_current[1]  = temp_l_x_indis[1];
        left_lane_x_indis_current[2]  =temp_l_x_indis[2];


        //index increase
        ++buffer_lane_x_l;
        //if index bigger than buffer then turn head
        buffer_lane_x_l %= buffer;

        //Note:First deleting the memory then adding on the current index
        //Adding right & left lane x_indis (recent)
        delete [] left_lane_x_indis_recent [ (buffer_lane_x_l) ];

        left_lane_x_indis_recent [ (buffer_lane_x_l) ] = left_lane_x_indis_current;
    }






    //Adding Distance between right - left lines
    distance_right_left_current    = new int[3];
    distance_right_left_current[0] = (temp_r_x_indis[0]-
                                      temp_l_x_indis[0]);
    distance_right_left_current[1] = (temp_r_x_indis[1]-
                                      temp_l_x_indis[1]);
    distance_right_left_current[2] = (temp_r_x_indis[2]-
                                      temp_l_x_indis[2]);


    //Adding Distance between center&lines
    distance_center_left_current  = new int[3];
    distance_right_center_current = new int[3];

    distance_center_left_current[0]  = ( image_center_x - temp_l_x_indis[0] );
    distance_right_center_current[0] = ( temp_r_x_indis[0] - image_center_x );

    distance_center_left_current[1]  = ( image_center_x - temp_l_x_indis[1] );
    distance_right_center_current[1] = ( temp_r_x_indis[1] - image_center_x );

    distance_center_left_current[2]  = ( image_center_x - temp_l_x_indis[2] );
    distance_right_center_current[2] = ( temp_r_x_indis[2] - image_center_x );





    //index increase
    ++buffer_lane_calculations;

    //if index bigger than buffer then turn head
    buffer_lane_calculations %= buffer;

    //Note:First deleting the memory then adding on the current index

    //Adding Distance between right - left lines (recent)
    delete [] distance_right_left_recent [ (buffer_lane_calculations) ];
    distance_right_left_recent [ (buffer_lane_calculations) ] = distance_right_left_current;

    //Adding Distance between center&lines (recent)
    delete [] distance_center_left_recent [ (buffer_lane_calculations) ];
    delete [] distance_right_center_recent [ (buffer_lane_calculations) ];
    distance_center_left_recent[ (buffer_lane_calculations) ] = distance_center_left_current;
    distance_right_center_recent[ (buffer_lane_calculations) ] = distance_right_center_current;


}

// for 0 -> left for 1 ->right
//int Lane::CalculateXCurrent(int y, int which){
//
//    int x;
//    //Bottom of image - y is the max value
//    if(which==0){
//        x =     (coefficient_left_current[0] * pow(y,2) +
//                 coefficient_left_current[1] * pow(y,1) +
//                 coefficient_left_current[2]);
//
//    }
//    else if (which==1){
//        x = (coefficient_right_current[0] * pow(y,2) +
//             coefficient_right_current[1] * pow(y,1) +
//             coefficient_right_current[2]);
//    }
//    else{
//        return -1;
//    }
//
//    return x;
//}

//
//  Fitting_Second_Order.hpp


#ifndef Fitting_Second_Order_hpp
#define Fitting_Second_Order_hpp

#include <stdio.h>

//TODO: Eğri uyduramazsa bildirilmesi gerekiyor.

using namespace std;

float ** Inverse_Matrix(float **Matrix, int row=3, int col=3){

    float determinant = 0;
    float **Inverse_matrix= new float*[3];

    //finding determinant
    for(int i = 0; i < 3; i++)
        determinant = determinant + (Matrix[0][i] * (Matrix[1][(i+1)%3] * Matrix[2][(i+2)%3] - Matrix[1][(i+2)%3] * Matrix[2][(i+1)%3]));

    for(int i = 0; i < 3; i++){
        Inverse_matrix[i]= new float[3];

        for(int j = 0; j < 3; j++){
            Inverse_matrix[i][j] = (
                                    ( Matrix [ (j+1) % 3 ] [ (i+1) % 3 ] * Matrix[ (j+2) % 3 ] [ (i+2) % 3 ] ) -
                                    ( Matrix [ (j+1) % 3 ] [ (i+2) % 3 ] * Matrix[ (j+2) % 3 ] [ (i+1) % 3 ] )
                                    ) / determinant;
        }
    }
    return Inverse_matrix;
}

//(3*N * N*3)
float  **Multiplication_Matrix(float **T_matrix,float **Matrix, int column1, int column2){

    float **Result= new float*[3] ;

    for(int i = 0; i < 3; ++i){

        Result[i]= new float[column2];

        for(int j = 0; j < column2; ++j){

            Result[i][j]=0;

            for(int k = 0; k < column1; ++k){

                Result[i][j] += T_matrix[i][k] *  Matrix[k][j];
            }
        }
    }

    return Result;
}

float  **Transpoze_Matrix(float **Matrix,int row, int col){

    float **T_Matrix= new float*[col];

    for (int i = 0; i < col; i++){
        T_Matrix[i] = new float[row];
        for (int j=0; j < row; j++){
            T_Matrix[i][j] = Matrix[j][i];
        }
    }
    return T_Matrix;

}

//Least Squares Fitting
void Fitting_Second_Order(std::vector<int> y, std::vector<int> x, float* result){

    if ( x.size() != y.size() )
        throw std::invalid_argument( "X and Y vector sizes do not match" );


    uint const lenght = (uint) x.size();
    float **X_Matrix = new float * [lenght];
    float **Y_Matrix = new float * [lenght];

    for (int i = 0,j=0; j < lenght; j++){

        X_Matrix[j]= new float [3];
        Y_Matrix[j]= new float [1];

        X_Matrix[ ( (int) i/3  ) ] [ ( (int) i%3  ) ] = pow(x[j],2);

        i += 1;

        X_Matrix[ ( (int) i/3  ) ] [ ( (int) i%3  ) ] = x[j];

        i += 1;

        X_Matrix[ ( (int) i/3  ) ] [ ( (int) i%3  ) ] = 1;

        i += 1;

        Y_Matrix[j][0] = y[j];

    }

    float ** X_T_Matrix = Transpoze_Matrix(X_Matrix, lenght, 3);

    float **D = Multiplication_Matrix(X_T_Matrix,X_Matrix, lenght,3);

    float **D_I = Inverse_Matrix(D);

    float **temp= Multiplication_Matrix(D_I, X_T_Matrix, 3, lenght);

    float ** result_temp = Multiplication_Matrix(temp, Y_Matrix, lenght, 1);

    //Assigning in array
    result[0]= result_temp[0][0];
    result[1]= result_temp[1][0];
    result[2]= result_temp[2][0];


    //Deallocations
    for(int i=0; i<lenght ; i++){
        delete [] X_Matrix[i];
        delete [] Y_Matrix[i];
    }

    delete [] X_Matrix;
    delete [] Y_Matrix;

    for(int i=0; i<3 ; i++){
        delete [] D[i];
        delete [] D_I[i];
        delete [] temp[i];
        delete [] result_temp[i];
        delete [] X_T_Matrix[i];
    }
    delete [] D;
    delete [] D_I;
    delete [] temp;
    delete [] result_temp;
    delete [] X_T_Matrix;
}

#endif /* Fitting_Second_Order_hpp */

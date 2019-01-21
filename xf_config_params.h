//
//  xf_config_params.h
//  Advance_Lane_Detection
//
//  Created by Yakup Gorur on 2/10/17.
//  Copyright © 2018 Yakup Gorur. All rights reserved.

/* Optimization type */


//******Sobel

	/*  set the optimisation type*/
	#define RO 0 // Resource Optimized (8-pixel implementation)
	#define NO 1 // Normal Operation (1-pixel implementation)

	/*  Set Filter size  */

	#define FILTER_SIZE_3  1
	#define FILTER_SIZE_5  0
	#define FILTER_SIZE_7  0

//*******Threshold

	/*  set the optimisation type*/
	#define RO  0 // Resource Optimized
	#define NO  1  // Normal Operation

	/*  set the type of thresholding*/

	#define BINARY  1
	#define RANGE   0


//*******Arithm


	/*  set the optimisation type  */
	#define RO  0 // Resource Optimized
	#define NO  1  // Normal Operation


	#define T_8U  1  // Input type of 8U
	#define T_16S 0  // Input type of 16S


//******Warpperspective

	#define RO 0 // Resource Optimized (8-pixel implementation)
	#define NO 1 // Normal Operation (1-pixel implementation)



	#define BILINEAR 1
	#define NN 0

	#define XTL 			-30				// X-coordinate Top left
	#define YTL 			-60				// Y-coordinate Top left

	#define XTR  			1920			// X-coordinate Top Right
	#define YTR 			-50				// Y-coordinate Top Right

	#define XBR 			2020			// X-coordinate Bottom Right
	#define YBR 			1130			// Y-coordinate Bottom Right

	#define XBL 			-50				// X-coordinate Bottom Left
	#define YBL 			1130			// Y-coordinate Bottom Left

	#define WIDTH  640
	#define HEIGHT 480

//****** Warp Transform
	#define RO 	0			// 8 Pixel Processing
	#define NO 	1			// 1 Pixel Processing

	//Number of rows in the input image
	#define WIDTH  640
	//Number of columns in  in the input image
	#define HEIGHT 480

	//Number of rows of input image to be stored
	#define NUM_STORE_ROWS 640

	//Number of rows of input image after which output image processing must start
	#define START_PROC 9

	//transform type 0-NN 1-BILINEAR
	#define INTERPOLATION 1

	//transform type 0-AFFINE 1-PERSPECTIVE
	#define TRANSFORM_TYPE 1


%{
    Charles Arnaudo
    arnaudoc@wit.edu
    Assignment 1
%}

disp("---Finish Solving Problem 1---"); 
pause;

A = imread("peppers.bmp");
figure, imshow(A);
title("RGB Original Image");

disp("---Finish Solving Problem 2---"); 
pause;

B = rgb2gray(A);
TB = B.';
figure, imshowpair(B, TB, 'montage');
%{
    Charles Arnaudo
    arnaudoc@wit.edu
    Assignment 2
%}
clear all;
clearvars;

disp("---Finish Solving Problem 1---");
pause;

A = imread("Food.jpg");
B = A;
B = imadjust(B, [0.35 0.65], [0 1]);

subplot(1,2,1);
imshow(A);
title("Non adjusted image");
subplot(1,2,2);
imshow(B);
title("Adjusted Image");

imwrite(B, "Food_Adjusted.jpg");

disp("---Finish Solving Problem 2---");
pause;
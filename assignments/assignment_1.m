%{
    Charles Arnaudo
    arnaudoc@wit.edu
    Assignment 1
%}
clear all;

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

B = im2double(B);
disp(max(B));
disp(min(B));
disp(mean(B));
disp(median(B));

disp("---Finish Solving Problem 3---"); 
pause;

C = B;
figure, imshow(C);
title("Normalized Gray Scale Image");

disp("---Finish Solving Problem 4---"); 
pause;

D1 = C.^ .25 ; 
D2 = C.^ 1.25;

figure;
subplot(2,1,1), imshow(D1);
title(".25");
subplot(2,1,2), imshow(D2);
title("1.25");

imwrite(D2, "charles_D2.jpg");

disp("By raising all values to a value less than 1. we are reducing the intensity of the color, which is grayscale, becoming more white");
disp("By raising all values to a value greater than 1. we are increasing the intensity of the color, which is grayscale, becoming more black");
disp("---Finish Solving Problem 5---"); 
pause;

bw1 = C;
[i, j] = size(bw1);

for i=1:i
    for j=1:j
        if bw1(i, j) >= .3
            bw1(i, j) = 1;
        else
            bw1(i, j) = 0;
        end
    end
end

bw2 = im2bw(C, .3);

figure; 
subplot(1,2,1), imshow(bw1);
title("matlab method");
subplot(1,2,2), imshow(bw2);
title("my method");
disp("My method worked");

disp("---Finish Solving Problem 6---"); 
pause;

close all;
clear all;

function [output] = ReduceGrayScale(input)
%REDUCEGRAYSCALE Reduces Gray Scale
    output = input.^.25;
end


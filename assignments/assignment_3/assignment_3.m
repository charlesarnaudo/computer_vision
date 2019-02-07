%{
Charles Arnaudo
arnaudoc@wit.edu
Assignment 3
%}
clc;
close all;
clear all;

disp("---Finish Solving Problem 1a---");
pause;
A = imread('Circuit.jpg');
B = MeanFilter(A, 3);
C = MeanFilter(A, 5);

figure;
subplot(1,3,1);
imshow(A);
title("Original")
subplot(1, 3, 2);
imshow(B);
title("3x3")
subplot(1, 3, 3)
imshow(C);
title("5x5")

disp("---Finish Solving Problem 1b---");
pause;
close all;
clear all;

A = imread('Circuit.jpg');
h = fspecial('average', [3 3]);
B = filter2(h, A);

subplot(1,3,1);
imshow(A);
title("Original")
subplot(1, 3, 2);
imshow(B);
title("3x3")

function [output] = MeanFilter(image, filterSize)
%Mean filter
    image = im2double(image);
    [row, column] = size(image);
    output = zeros(row, column);
    buffer = filterSize-2;
    padarray(image, buffer);

    for i=1+buffer:row-buffer
        for j=1+buffer:column-buffer
            avg = 0;
            avg = image(i-buffer, j-buffer) + image(i-buffer, j) + image(i-buffer, j+buffer) + image(i, j) + image(i, j-buffer) + image(i, j+buffer) + image(i+buffer, j-buffer) + image(i+buffer, j) + image(i+buffer, j+buffer);
            output(i, j) = avg / 9;
        end
    end
end
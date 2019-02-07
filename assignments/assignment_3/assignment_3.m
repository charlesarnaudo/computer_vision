% %{
% Charles Arnaudo
% arnaudoc@wit.edu
% Assignment 3
% %}
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
figure;
A = imread('Circuit.jpg');

subplot(1,3,1);
imshow(A);
title("Original")

subplot(1, 3, 2);
h = fspecial('average', [3 3]);
B = filter2(h, A)/255;
imshow(B);
title("3x3")

subplot(1, 3, 3);
h = fspecial('average', [5 5]);
C = filter2(h, A)/255;
imshow(C);
title("5x5")

disp("The results are not the same as my process");

disp("---Finish Solving Problem 1c---");
pause;
close all;
clear all;
figure;
A = imread('Circuit.jpg');
B = MedianFilter(A, 3);
C = MedianFilter(A, 5);

subplot(1,3,1);
imshow(A);
title("Original")

subplot(1, 3, 2);
imshow(B);
title("3x3")

subplot(1, 3, 3);
imshow(C);
title("5x5")

disp("---Finish Solving Problem 1d---");
pause;
close all;
clear all;

figure;
A = imread('Circuit.jpg');

subplot(1,3,1);
imshow(A);
title("Original")

subplot(1, 3, 2);
B = medfilt2(A, [3 3]);
imshow(B);
title("3x3")

subplot(1, 3, 3);
C = medfilt2(A, [5 5]);
imshow(C);
title("5x5")

disp("The results are not the same as my process");

disp("---Finish Solving Problem 1e---");
pause;
close all;
clear all;

A = imread('Moon.jpg');
h = fspecial('laplacian');
B = filter2(h, A);
C = double(A) - filter2(h, A);

subplot(1, 3, 1);
imshow(A);
title("original")

subplot(1, 3, 2);
imshow(B)
title("Filtered Image")

subplot(1, 3, 3)
imshow(C);
title("Enhanced Image")

disp("---Finish Solving Problem 2---");
pause;
close all;
clear all;

disp(" 0 .5  0")
disp(".5  1 .5")
disp(" 0 .5  0")

disp("The filters double up at the center point, thus making it 1 because it is 1 + 1 / 2. The rest of the values are 1 / 2 making .5")

disp("Convolution: ")
disp("27 50  72  90  85")
disp("33 72 110 145 150")
disp("34 78 125 167 153")
disp("34 68 100 132  98")

disp("Correlation coeffcient: 0.7046")

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
            for y=-buffer:buffer
                for z=-buffer:buffer
                    avg = avg + image(i+y, j+z);
                end
            end
            output(i, j) = avg / filterSize^2;
        end
    end
end

function [output] = MedianFilter(image, filterSize)
%Median filter
    [row, column] = size(image);
    output = zeros(row, column);
    buffer = filterSize-2;
    padarray(image, buffer);

    for i=1+buffer:row-buffer
        for j=1+buffer:column-buffer
            neighbors = uint8([]);
            for y=-buffer:buffer
                for z=-buffer:buffer
                    neighbors = [neighbors, image(i+y, j+z)];
                end
            end
            output(i, j) = median(neighbors);
        end
    end
end

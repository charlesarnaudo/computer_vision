%{
    Charles Arnaudo
    arnaudoc@wit.edu
    Assignment 2
%}
% clear all;
% clearvars;
%
% disp("---Finish Solving Problem 1a---");
% pause;
%
% % A
% A = imread("Food.jpg");
% B = A;
% B = imadjust(B, [0.35 0.65], [0 1]);
%
% figure;
% subplot(1,2,1);
% imshow(A);
% title("Non adjusted image");
% subplot(1,2,2);
% imshow(B);
% title("Adjusted Image");
% imwrite(B, "ScaledFood.jpg");
%
% disp("---Finish Solving Problem 1b---");
% pause;
%
% subplot(1,2,1);
% imhist(A);
% title("Histogram");
% subplot(1,2,2);
% h = histogram(A, 'Normalization', 'probability');
% title("Normalized Histogram");
%
% disp("---Finish Solving Problem 1c---");
% pause;
%
% A = imread("Food.jpg");
% B = imread("ScaledFood.jpg");
% C = histeq(A);
% imwrite(C, "EqualizedFood.jpg");
%
% subplot(1,3,1);
% imshow(A);
% title("Original");
% subplot(1,3,2);
% imshow(B);
% title("Adjusted Image");
% subplot(1,3,3);
% imshow(C);
% title("Equalized image")
%
% disp("---Finish Solving Problem 1d---");
% pause;
%
% close all;
% clear all;

% disp("---Finish Solving Problem 2---");
% pause;
%
% figure;
% A = imread("Shapes.tiff");
%
% subplot(2, 2, 1);
% imshow(A);
% title("Original");
%
% subplot(2, 2, 2);
% se = strel('rectangle', [20, 20]);
% B = imopen(A, se);
% imshow(B);
% title("Opened");
%
% subplot(2, 2, 3);
% se = strel('rectangle', [20, 20]);
% C = imclose(A, se);
% imshow(C);
% title("Closed");
%
% subplot(2, 2, 4);
% se = strel('rectangle', [20, 20]);
% D = imopen(A, se);
% D = imdilate(D, se);
% imshow(D);
% title("Open and then dilated");
%
% disp("---Finish Solving Problem 3---");
% pause;
% close all;
% clear all;
%
% figure;
% A = imread("Wirebond.tiff");
%
% subplot(2, 2, 1);
% imshow(A);
% title("Original");
%
% subplot(2, 2, 2);
% se = strel('disk', 10);
% B = imerode(A, se);
% imshow(B);
% title("Disk r=10");
%
% subplot(2, 2, 3);
% se = strel('disk', 5);
% C = imerode(A, se);
% imshow(C);
% title("Disk r=5");
%
% subplot(2, 2, 4);
% se = strel('disk', 20);
% C = imerode(A, se);
% imshow(C);
% title("Disk r=20");

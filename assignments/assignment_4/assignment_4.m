%{
    Charles Arnaudo
    arnaudoc@wit.edu
    Assignment 4
%}

clc;
close all;
clear all;

disp("---Finish Solving Problem 1a---");
pause;

I = imread('Sample.jpg');
% I = double(I);
% I = fft2(I);
% fscaled = fftshift(I);
% [M, N]=size(I);
% R=20;
% X=0:N-1;
% Y=0:M-1;
% [X, Y]=meshgrid(X, Y);
% cx=0.5*N;
% cy=0.5*M;
% 
% low_filter=exp(-((X-cx).^2+(Y-cy).^2)./(2*R).^2);
% 
% J=fscaled.*low_filter;
% J1=ifftshift(J);
% lowpass=ifft2(J1);
iblur = imgaussfilt(I, 40);

subplot(1, 1, 1)
imshow(iblur)

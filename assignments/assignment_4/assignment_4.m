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

I=imread('Sample.jpg');
filter = fft2(double(I));
fscale =fftshift(filter);

[M, N]=size(filter); % image size
R=10; % filter size parameter 
X=0:N-1;
Y=0:M-1;
[X, Y]=meshgrid(X,Y);
cx=1/2*N;
cy=1/2*M;
Lo=exp(-((X-cx).^2+(Y-cy).^2) / (2*R).^2);

J=fscale.*Lo;
J1=ifftshift(J);
B1=ifft2(J1);

subplot(1, 3, 1)
imshow(I);
title("Original")

subplot(1, 3, 2)
imshow(abs(filter), [0 10000])
title("Filter")

subplot(1, 3, 3)
imshow(abs(B1), [0 255])
title("Filted image")

disp("---Finish Solving Problem 1b---");
pause;

% disp("---Finish Solving Problem 1c---");
% pause;
% 
% disp("---Finish Solving Problem 1d---");
% pause;
% 
% clc;
% close all;
% clear all;




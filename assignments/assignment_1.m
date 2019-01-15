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
figure, imshowpair(D1, D2, 'montage');

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

figure, imshowpair(bw1, bw2, 'montage');
disp("My method worked");

disp("---Finish Solving Problem 6---"); 
pause;

close all;
clear all;
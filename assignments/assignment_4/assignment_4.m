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

I=imread('Sample.jpg');
n=1;
d=50;
h=size(I,1);
w=size(I,2);
ffti = fftshift(fft2(double(I)));
[x, y]=meshgrid(-floor(w/2):floor(w/2)-1,-floor(h/2):floor(h/2)-1);

B = sqrt(2) - 1;
D = sqrt(x.^2 + y.^2);
hhp = 1 ./ (1 + B * ((d ./ D).^(2 * n)));
out_spec_centre = ffti .* hhp;
out_spec = ifftshift(out_spec_centre);
out = real(ifft2(out_spec));
out = (out - min(out(:))) / (max(out(:)) - min(out(:)));
out = uint8(255*out);

figure;
subplot(1, 3, 1)
imshow(I);
title("Original")

subplot(1, 3, 2)
imshow(abs(ffti), [0 10000])
title("Filter")

subplot(1, 3, 3)
imshow(abs(out), [0 255])
title("Filted image")

disp("---Finish Solving Problem 1c---");
pause;

disp("The low pass filter gaussian filter blurs and takes out values that are low")
disp("The high pass filter gaussian filter and takes out values that are high")

disp("---Finish Solving Problem 1d---");
pause;

clc;
close all;
clear all;

disp("---Finish Solving Problem 2a---");
pause;

A=double(imread('Sample.jpg'));
B=double(imread('NewCapitol.jpg'));

amag = abs(A); %# has same magnitude as F, 0 phase
bmag = abs(B);
aphase = cos(angle(A)) + j*(sin(angle(A)));
bphase = cos(angle(B)) + j*(sin(angle(B)));

amag = ifft2(amag);
bmag = ifft2(bmag);
aphase = ifft2(aphase);
bphase = ifft2(bphase);

figure;
subplot(1, 4, 1);
imshow(real(log10(amag)), [0 1])
title("Sample mag")

figure;
subplot(1, 4, 2);
imshow(real(log10(bmag)), [0 1])
title("NewCaptiol mag")

figure;
subplot(1, 4, 3);
imshow(real(log10(aphase)), [0 255])
title("Sample phase")

figure;
subplot(1, 4, 4);
imshow(real(log10(bmag)), [0 255])
title("NewCapitol phase")

disp("---Finish Solving Problem 2b---");
pause;

figure;
subplot(1, 2, 1);
imshow(real(log10(ifft2(ifftshift(aphase)))));
title("Original")

subplot(1, 2, 2);
imshow(real(log10(ifft2(ifftshift(bphase)))));
title("Original")

disp("---Finish Solving Problem 2d---");
pause;

clc;
close all;
clear all;

disp("---Finish Solving Problem 3a---");
pause;

I = imread('boy_noisy.gif');
figure()
subplot(1,2,1)
imshow(boy)
title('Original')

fft = fft2(im2double(I));

mag = abs(fft);
phase = fft./mag;

[x, y] = size(mag);
s = sort(reshape(mag,[x*y,1]));
l = length(s);
lmags = s(l-8:l-1);

bmag = mag;
[l, w] = size(bmag);
for i=1:w
    for j=1:l
        v = bmag(i,j);
        for x=1:8
            if v == lmags(x)
                nbmag(i,j) = 0;
                n = 8;
                for ii=i-1:i+1
                    for jj=j-1:j+1
                        if ii == i && jj == j
                            continue
                        end
                        if ii < 1 || ii > w || jj < 1 || jj > l
                            n = n - 1;
                            continue
                        end
                        nbmag(i,j) = nbmag(i,j) + bmag(ii, jj);
                    end
                end
                nbmag(i,j) = nbmag(i,j)/n;
            end
        end
    end
end

boy = real(ifft2(nbmag.*pase));
subplot(1,2,2)
imshow(boy)
title('Restored Image')






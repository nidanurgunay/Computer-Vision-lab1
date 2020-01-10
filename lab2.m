
close all
I=imread('city.png');
z=imread('currentimage.png');
im=imread('board.jpg');
K=imread('jump.png');
figure
im=rgb2gray(im);
imshow(im);

J=lab1linscale(I);
imshow(J);
imhist(J);
figure
w=lab1condscale(I,im);
imshow(w);

figure
loc=lab1locbox(K,5);
imshow(loc);

[I1,I2]=lab1locmaxmin(z,3);
figure
subplot(1,2,1);
imshow(I1);
title('Local max filtered image');

subplot(1,2,2);
imshow(I2);
title('Local min filtered image');
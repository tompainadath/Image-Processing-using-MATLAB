clear all
close all
[img1,cm] = imread('im_eagles.png');
subplot(2, 2, 1);
imshow(img1,cm);
[img2,cm] = imread('im_coins.png');
subplot(2, 2, 2);
imshow(img2,cm);
[img3,cm] = imread('im_coins_noisy.png');
subplot(2, 2, 3);
imshow(img3,cm);
[img4,cm] = imread('im_circles.png');
subplot(2, 2, 4);
imshow(img4,cm);
h = fspecial('gaussian');
figure(2);
imfilter(img1, cm);

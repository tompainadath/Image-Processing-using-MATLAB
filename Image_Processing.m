clear all
close all
[image1,cm] = imread('im_eagles.png');

figure(1);
subplot(1, 3, 1);
imshow(image1,cm);
xlabel('Original');

low_pass_filter = fspecial('average',[3 3]);
low_pass_filtered_image1 = imfilter(image1,low_pass_filter);
subplot(1,3,2);
imshow(low_pass_filtered_image1, cm);
xlabel('Low pass filtered');

new_HSIZE = [0,0,0;0,1,0;0,0,0];
high_pass_filter = low_pass_filter - new_HSIZE;
subplot(1, 3, 3);
high_pass_filtered_image1 = imfilter(image1,high_pass_filter);
imshow(high_pass_filtered_image1, cm);
xlabel('High pass filtered');

figure(2);
[image2,cm] = imread('im_coins.png');
subplot(1, 3, 1);
imshow(image2,cm);
xlabel('Original');

low_pass_filtered_image2 = imfilter(image2,low_pass_filter);
subplot(1,3,2);
imshow(low_pass_filtered_image2, cm);
xlabel('Low pass filtered');

new_HSIZE = [0,0,0;0,1,0;0,0,0];
high_pass_filter = low_pass_filter - new_HSIZE;
subplot(1, 3, 3);
high_pass_filtered_image2 = imfilter(image2,high_pass_filter);
imshow(high_pass_filtered_image2, cm);
xlabel('High pass filtered');

figure(3);
[image3,cm] = imread('im_circles.png');
subplot(1, 3, 1);
imshow(image3,cm);
xlabel('Original');

low_pass_filtered_image3 = imfilter(image3,low_pass_filter);
subplot(1,3,2);
imshow(low_pass_filtered_image3, cm);
xlabel('Low pass filtered');

new_HSIZE = [0,0,0;0,1,0;0,0,0];
high_pass_filter = low_pass_filter - new_HSIZE;
subplot(1, 3, 3);
high_pass_filtered_image3 = imfilter(image3,high_pass_filter);
imshow(high_pass_filtered_image3, cm);
xlabel('High pass filtered');


figure(4);
subplot(1,3,1);
myFFT2(low_pass_filter);
xlabel('myFFT of LPF - HSIZE:[3 3]');

subplot(1,3,2);
low_pass_filter2 = fspecial('average', [5 5]);
myFFT2(low_pass_filter2);
xlabel('myFFT of LPF - HSIZE:[5 5]');


subplot(1,3,3);
low_pass_filter3 = fspecial('average', [7 7]);
myFFT2(low_pass_filter3);
xlabel('myFFT of LPF - HSIZE:[7 7]');

figure(5);
subplot(1,3,1);
low_pass_filtered_image1 = imfilter(image1,low_pass_filter);
imshow(low_pass_filtered_image1, cm);
xlabel('LPF - HSIZE:[3 3]');

subplot(1,3,2);
low_pass_filtered2_image1 = imfilter(image1,low_pass_filter2);
imshow(low_pass_filtered2_image1, cm);
xlabel('LPF - HSIZE:[5 5]');

subplot(1,3,3);
low_pass_filtered3_image1 = imfilter(image1,low_pass_filter3);
imshow(low_pass_filtered3_image1, cm);
xlabel('LPF - HSIZE:[7 7]');

figure(6);
subplot(1,3,1);
low_pass_filtered_image2 = imfilter(image2,low_pass_filter);
imshow(low_pass_filtered_image2, cm);
xlabel('LPF - HSIZE:[3 3]');

subplot(1,3,2);
low_pass_filtered2_image2 = imfilter(image2,low_pass_filter2);
imshow(low_pass_filtered2_image2, cm);
xlabel('LPF - HSIZE:[5 5]');

subplot(1,3,3);
low_pass_filtered3_image2 = imfilter(image2,low_pass_filter3);
imshow(low_pass_filtered3_image2, cm);
xlabel('LPF - HSIZE:[7 7]');

figure(7);
subplot(1,3,1);
low_pass_filtered_image3 = imfilter(image3,low_pass_filter);
imshow(low_pass_filtered_image3, cm);
xlabel('LPF - HSIZE:[3 3]');

subplot(1,3,2);
low_pass_filtered2_image3 = imfilter(image3,low_pass_filter2);
imshow(low_pass_filtered2_image3, cm);
xlabel('LPF - HSIZE:[5 5]');

subplot(1,3,3);
low_pass_filtered3_image3 = imfilter(image3,low_pass_filter3);
imshow(low_pass_filtered3_image3, cm);
xlabel('LPF - HSIZE:[7 7]');

figure(8);
subplot(2,3,1);
myFFT2(high_pass_filter);
xlabel('HPF - HSIZE:[3 3]');

subplot(1, 3, 2);
new_HSIZE2 = [0,0,0,0,0;0,0,0,0,0;0,0,1,0,0;0,0,0,0,0;0,0,0,0,0];
high_pass_filter2 = low_pass_filter2 - new_HSIZE2;
myFFT2(high_pass_filter2);
xlabel('HPF - HSIZE:[5 5]');

subplot(2,3,3);
new_HSIZE3 = [0,0,0,0,0,0,0;0,0,0,0,0,0,0;0,0,0,0,0,0,0;0,0,0,1,0,0,0;0,0,0,0,0,0,0;0,0,0,0,0,0,0;0,0,0,0,0,0,0];
high_pass_filter3 = low_pass_filter3 - new_HSIZE3;
myFFT2(high_pass_filter3);
xlabel('HPF - HSIZE:[7 7]');

figure(9);
subplot(1,3,1);
high_pass_filtered_image1 = imfilter(image1,high_pass_filter);
imshow(high_pass_filtered_image1, cm);
xlabel('HPF - HSIZE:[3 3]');

subplot(1,3,2);
high_pass_filtered2_image1 = imfilter(image1,high_pass_filter2);
imshow(high_pass_filtered2_image1, cm);
xlabel('HPF - HSIZE:[5 5]');

subplot(1,3,3);
high_pass_filtered3_image1 = imfilter(image1,high_pass_filter3);
imshow(high_pass_filtered3_image1, cm);
xlabel('HPF - HSIZE:[7 7]');

figure(10);
subplot(1,3,1);
high_pass_filtered_image2 = imfilter(image2,high_pass_filter);
imshow(high_pass_filtered_image2, cm);
xlabel('HPF - HSIZE:[3 3]');

subplot(1,3,2);
high_pass_filtered2_image2 = imfilter(image2,high_pass_filter2);
imshow(high_pass_filtered2_image2, cm);
xlabel('HPF - HSIZE:[5 5]');

subplot(1,3,3);
high_pass_filtered3_image2 = imfilter(image2,high_pass_filter3);
imshow(high_pass_filtered3_image2, cm);
xlabel('HPF - HSIZE:[7 7]');

figure(11);
subplot(1,3,1);
high_pass_filtered_image3 = imfilter(image3,high_pass_filter);
imshow(high_pass_filtered_image3, cm);
xlabel('HPF - HSIZE:[3 3]');

subplot(1,3,2);
high_pass_filtered2_image3 = imfilter(image3,high_pass_filter2);
imshow(high_pass_filtered2_image3, cm);
xlabel('HPF - HSIZE:[5 5]');

subplot(1,3,3);
high_pass_filtered3_image3 = imfilter(image3,high_pass_filter3);
imshow(high_pass_filtered3_image3, cm);
xlabel('HPF - HSIZE:[7 7]');

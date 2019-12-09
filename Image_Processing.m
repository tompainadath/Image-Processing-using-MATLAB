clear all
close all
[image1,cm] = imread('im_eagles.png');
figure(1);
subplot(1, 3, 1);
imshow(image1,cm);
low_pass_filter = fspecial('average',[3 3]);
low_pass_filtered_image1 = imfilter(image1,low_pass_filter);
subplot(1,3,2);
imshow(low_pass_filtered_image1, cm);

new_HSIZE = [0,0,0;0,1,0;0,0,0];
high_pass_filter = low_pass_filter - new_HSIZE;
subplot(1, 3, 3);
high_pass_filtered_image1 = imfilter(image1,high_pass_filter);
imshow(high_pass_filtered_image1, cm);

figure(2);
[image2,cm] = imread('im_coins.png');
subplot(1, 3, 1);
imshow(image2,cm);

low_pass_filtered_image2 = imfilter(image2,low_pass_filter);
subplot(1,3,2);
imshow(low_pass_filtered_image2, cm);

new_HSIZE = [0,0,0;0,1,0;0,0,0];
high_pass_filter = low_pass_filter - new_HSIZE;
subplot(1, 3, 3);
high_pass_filtered_image2 = imfilter(image2,high_pass_filter);
imshow(high_pass_filtered_image2, cm);


figure(3);
[image3,cm] = imread('im_circles.png');
subplot(1, 3, 1);
imshow(image3,cm);

low_pass_filtered_image3 = imfilter(image3,low_pass_filter);
subplot(1,3,2);
imshow(low_pass_filtered_image3, cm);

new_HSIZE = [0,0,0;0,1,0;0,0,0];
high_pass_filter = low_pass_filter - new_HSIZE;
subplot(1, 3, 3);
high_pass_filtered_image3 = imfilter(image3,high_pass_filter);
imshow(high_pass_filtered_image3, cm);


figure(4);
subplot(1,3,1);
myFFT2(low_pass_filter);
xlabel('Low Pass Filter HSIZE: [3 3]');

subplot(1,3,2);
low_pass_filter2 = fspecial('average', [5 5]);
myFFT2(low_pass_filter2);
xlabel('Low Pass Filter HSIZE: [5 5]');


subplot(1,3,3);
low_pass_filter3 = fspecial('average', [7 7]);
myFFT2(low_pass_filter3);
xlabel('Low Pass Filter HSIZE: [7 7]');

figure(5);
subplot(2,3,1);
myFFT2(high_pass_filter);

subplot(1, 3, 2);
new_HSIZE2 = [0,0,0,0,0;0,0,0,0,0;0,0,1,0,0;0,0,0,0,0;0,0,0,0,0];
high_pass_filter2 = low_pass_filter2 - new_HSIZE2;
myFFT2(high_pass_filter2);

subplot(2,3,3);
new_HSIZE3 = [0,0,0,0,0,0,0;0,0,0,0,0,0,0;0,0,0,0,0,0,0;0,0,0,1,0,0,0;0,0,0,0,0,0,0;0,0,0,0,0,0,0;0,0,0,0,0,0,0];
high_pass_filter3 = low_pass_filter3 - new_HSIZE3;
myFFT2(high_pass_filter3);


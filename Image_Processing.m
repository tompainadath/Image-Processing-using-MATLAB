clear all
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Low Pass and High Pass Filtered Images %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[image1,cm] = imread('im_eagles.png');  % Load image 1

figure(1);  % Create new figure
subplot(1, 3, 1);  % Place the image on row 1 column 1 of the figure
imshow(image1,cm);  % Plot the image
xlabel('Original');  % Label the x-axis

low_pass_filter = fspecial('average',[3 3]);  % Create averaging low pass filter with size [3 3]
low_pass_filtered_image1 = imfilter(image1,low_pass_filter);  % apply the filter on image 1
subplot(1,3,2);  % Place the image on row 1 column 2 of the figure
imshow(low_pass_filtered_image1, cm);  % Plot the filtered image
xlabel('Low pass filtered');  % Label the x-axis

new_HSIZE = [0,0,0;0,1,0;0,0,0];  % Create a 2-D impulse 
high_pass_filter = new_HSIZE - low_pass_filter;  % Subtract the low pass filter from 2-D impulse
subplot(1, 3, 3);  % Place the image on row 1 column 3 of the figure
high_pass_filtered_image1 = imfilter(image1,high_pass_filter);  % apply the filter on image
imshow(high_pass_filtered_image1, cm); % Plot the filtered image
xlabel('High pass filtered');  % Label the x-axis

figure(2);  % Create new figure
[image2,cm] = imread('im_coins.png');  % Load image 2
subplot(1, 3, 1);  % Place the image on row 1 column 1 of the figure
imshow(image2,cm);  % Plot the image
xlabel('Original');  % Label the x-axis

low_pass_filtered_image2 = imfilter(image2,low_pass_filter);  % Apply the filter on image
subplot(1,3,2);  % Place the image on row 1 column 2 of the figure
imshow(low_pass_filtered_image2, cm);   % Plot the filtered image
xlabel('Low pass filtered');  % Label the x-axis

subplot(1, 3, 3);  % Place the image on row 1 column 3 of the figure
high_pass_filtered_image2 = imfilter(image2,high_pass_filter);  % Apply the filter on image
imshow(high_pass_filtered_image2, cm);   % Plot the filtered image
xlabel('High pass filtered');  % Label the x-axis

figure(3);  % Create new figure
[image3,cm] = imread('im_circles.png');  % Load image 3
subplot(1, 3, 1);  % Place the image on row 1 column 1 of the figure
imshow(image3,cm);   % Plot the image
xlabel('Original');  % Label the x-axis

low_pass_filtered_image3 = imfilter(image3,low_pass_filter);  % Apply the filter on image
subplot(1,3,2);  % Place the image on row 1 column 2 of the figure
imshow(low_pass_filtered_image3, cm);   % Plot the filtered image
xlabel('Low pass filtered');  % Label the x-axis

subplot(1, 3, 3);  % Place the image on row 1 column 3 of the figure
high_pass_filtered_image3 = imfilter(image3,high_pass_filter);  % Apply the filter on image
imshow(high_pass_filtered_image3, cm);   % Plot the filtered image
xlabel('High pass filtered');  % Label the x-axis

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% FFT Plots of Low Pass Filters %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(4);  % Create new figure
subplot(1,3,1);  % Place the image on row 1 column 1 of the figure
myFFT2(low_pass_filter);   % Plot FFT of the filter
xlabel('myFFT of LPF - HSIZE:[3 3]');  % Label the x-axis

subplot(1,3,2);  % Place the image on row 1 column 2 of the figure
low_pass_filter2 = fspecial('average', [5 5]);  % Create averaging low pass filter with size [5 5]
myFFT2(low_pass_filter2);   % Plot FFT of the filter
xlabel('myFFT of LPF - HSIZE:[5 5]');  % Label the x-axis


subplot(1,3,3);  % Place the image on row 1 column 3 of the figure
low_pass_filter3 = fspecial('average', [7 7]);  % Create averaging low pass filter with size [7 7]
myFFT2(low_pass_filter3);   % Plot FFT of the filter
xlabel('myFFT of LPF - HSIZE:[7 7]');  % Label the x-axis

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Images Filtered by Low Pass Filters with different HSIZE %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(5);  % Create new figure
subplot(1,3,1);  % Place the image on row 1 column 1 of the figure
low_pass_filtered_image1 = imfilter(image1,low_pass_filter);  % apply the filter on image
imshow(low_pass_filtered_image1, cm);   % Plot the filtered image
xlabel('LPF - HSIZE:[3 3]');  % Label the x-axis

subplot(1,3,2);  % Place the image on row 1 column 2 of the figure
low_pass_filtered2_image1 = imfilter(image1,low_pass_filter2);  % apply the filter on image
imshow(low_pass_filtered2_image1, cm);  % Plot the filtered image
xlabel('LPF - HSIZE:[5 5]');  % Label the x-axis

subplot(1,3,3);  % Place the image on row 1 column 3 of the figure
low_pass_filtered3_image1 = imfilter(image1,low_pass_filter3);  % apply the filter on image
imshow(low_pass_filtered3_image1, cm);  % Plot the filtered image
xlabel('LPF - HSIZE:[7 7]');  % Label the x-axis

figure(6);  % Create new figure
subplot(1,3,1);  % Place the image on row 1 column 1 of the figure
low_pass_filtered_image2 = imfilter(image2,low_pass_filter);  % apply the filter on image
imshow(low_pass_filtered_image2, cm);  % Plot the filtered image
xlabel('LPF - HSIZE:[3 3]');  % Label the x-axis

subplot(1,3,2);  % Place the image on row 1 column 2 of the figure
low_pass_filtered2_image2 = imfilter(image2,low_pass_filter2);  % apply the filter on image
imshow(low_pass_filtered2_image2, cm);   % Plot the filtered image
xlabel('LPF - HSIZE:[5 5]');  % Label the x-axis

subplot(1,3,3);  % Place the image on row 1 column 3 of the figure
low_pass_filtered3_image2 = imfilter(image2,low_pass_filter3);  % apply the filter on image
imshow(low_pass_filtered3_image2, cm);   % Plot the filtered image
xlabel('LPF - HSIZE:[7 7]');  % Label the x-axis

figure(7);  % Create new figure
subplot(1,3,1);  % Place the image on row 1 column 1 of the figure
low_pass_filtered_image3 = imfilter(image3,low_pass_filter);  % apply the filter on image
imshow(low_pass_filtered_image3, cm);   % Plot the filtered image
xlabel('LPF - HSIZE:[3 3]');  % Label the x-axis

subplot(1,3,2);  % Place the image on row 1 column 2 of the figure
low_pass_filtered2_image3 = imfilter(image3,low_pass_filter2);  % apply the filter on image
imshow(low_pass_filtered2_image3, cm);   % Plot the filtered image
xlabel('LPF - HSIZE:[5 5]');  % Label the x-axis

subplot(1,3,3);  % Place the image on row 1 column 3 of the figure
low_pass_filtered3_image3 = imfilter(image3,low_pass_filter3);  % apply the filter on image
imshow(low_pass_filtered3_image3, cm);   % Plot the filtered image
xlabel('LPF - HSIZE:[7 7]');  % Label the x-axis

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% FFT of High pass filter with different HSIZE %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(8);  % Create new figure
subplot(2,3,1);  % Place the image on row 1 column 1 of the figure
myFFT2(high_pass_filter);   % Plot the FFT of the filter
xlabel('HPF - HSIZE:[3 3]');  % Label the x-axis

subplot(1, 3, 2);  % Place the image on row 1 column 2 of the figure
new_HSIZE2 = [0,0,0,0,0;0,0,0,0,0;0,0,1,0,0;0,0,0,0,0;0,0,0,0,0];  % Create a 2-D impulse 
high_pass_filter2 = new_HSIZE2-low_pass_filter2;  % Subtract the low pass filter from 2-D impulse
myFFT2(high_pass_filter2);   % Plot the FFT of the filter
xlabel('HPF - HSIZE:[5 5]');  % Label the x-axis

subplot(2,3,3);  % Place the image on row 1 column 3 of the figure
new_HSIZE3 = [0,0,0,0,0,0,0;0,0,0,0,0,0,0;0,0,0,0,0,0,0;0,0,0,1,0,0,0;0,0,0,0,0,0,0;0,0,0,0,0,0,0;0,0,0,0,0,0,0];  % Create a 2-D impulse 
high_pass_filter3 = new_HSIZE3 - low_pass_filter3 ;  % Subtract the low pass filter from 2-D impulse
myFFT2(high_pass_filter3);  % Plot the FFT of the filter
xlabel('HPF - HSIZE:[7 7]');  % Label the x-axis

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Images Filtered by High Pass Filters with different HSIZE %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(9);  % Create new figure
subplot(1,3,1);  % Place the image on row 1 column 1 of the figure
high_pass_filtered_image1 = imfilter(image1,high_pass_filter);  % apply the filter on image
imshow(high_pass_filtered_image1, cm);  % Plot the filtered image
xlabel('HPF - HSIZE:[3 3]');  % Label the x-axis

subplot(1,3,2);  % Place the image on row 1 column 2 of the figure
high_pass_filtered2_image1 = imfilter(image1,high_pass_filter2);  % apply the filter on image
imshow(high_pass_filtered2_image1, cm);  % Plot the filtered image
xlabel('HPF - HSIZE:[5 5]');  % Label the x-axis

subplot(1,3,3);  % Place the image on row 1 column 3 of the figure
high_pass_filtered3_image1 = imfilter(image1,high_pass_filter3);  % apply the filter on image
imshow(high_pass_filtered3_image1, cm);  % Plot the filtered image
xlabel('HPF - HSIZE:[7 7]');  % Label the x-axis

figure(10);  % Create new figure
subplot(1,3,1);  % Place the image on row 1 column 1 of the figure
high_pass_filtered_image2 = imfilter(image2,high_pass_filter);  % apply the filter on image
imshow(high_pass_filtered_image2, cm);  % Plot the filtered image
xlabel('HPF - HSIZE:[3 3]');  % Label the x-axis

subplot(1,3,2);  % Place the image on row 1 column 2 of the figure
high_pass_filtered2_image2 = imfilter(image2,high_pass_filter2);  % apply the filter on image
imshow(high_pass_filtered2_image2, cm);  % Plot the filtered image
xlabel('HPF - HSIZE:[5 5]');  % Label the x-axis

subplot(1,3,3);  % Place the image on row 1 column 3 of the figure
high_pass_filtered3_image2 = imfilter(image2,high_pass_filter3);  % apply the filter on image
imshow(high_pass_filtered3_image2, cm);   % Plot the filtered image
xlabel('HPF - HSIZE:[7 7]');  % Label the x-axis
 
figure(11);  % Create new figure
subplot(1,3,1);  % Place the image on row 1 column 1 of the figure
high_pass_filtered_image3 = imfilter(image3,high_pass_filter);  % apply the filter on image
imshow(high_pass_filtered_image3, cm);   % Plot the filtered image
xlabel('HPF - HSIZE:[3 3]');  % Label the x-axis

subplot(1,3,2);  % Place the image on row 1 column 2 of the figure
high_pass_filtered2_image3 = imfilter(image3,high_pass_filter2);  % apply the filter on image
imshow(high_pass_filtered2_image3, cm);   % Plot the filtered image
xlabel('HPF - HSIZE:[5 5]');  % Label the x-axis

subplot(1,3,3);  % Place the image on row 1 column 3 of the figure
high_pass_filtered3_image3 = imfilter(image3,high_pass_filter3);  % apply the filter on image
imshow(high_pass_filtered3_image3, cm);   % Plot the filtered image
xlabel('HPF - HSIZE:[7 7]');  % Label the x-axis

%
% This script shows the basic use of images and sound in MATLAB
%
% Reference: Attaway, Chapter 13.1 and 13.4
%

% Initialization
clear
close all
clc


% Reading an image from the current working directory and displaying it
im1 = imread('Lenna.png');
whos im1  % Just checking what kind of data img is
          % Note that there are 3 channels (for red, green and blue).
          % Hence, these are called "true colour" images
          
figure  % Creating a new figure window
image(im1) % Displaying the image


%% Let's create a border around the image
[rows, cols, channels] = size(im1);

% Top border
im1(1:10, 1:cols, 1) = uint8(255); % red channel
im1(1:10, 1:cols, 2:3) = uint8(0); % green and blue channels

% Bottom border
im1(rows-10:rows, 1:cols, 2) = uint8(255); % green channel
im1(rows-10:rows, 1:cols, [1,3]) = uint8(0); % red and blue channels

% Right border
im1(1:rows, cols-10:cols, 3) = uint8(255); % blue channel
im1(1:rows, cols-10:cols, 1:2) = uint8(0); % red and green channels

% Left border
im1(1:rows, 1:10, 1) = uint8(255); % red channel
im1(1:rows, 1:10, 2) = uint8(255); % green channel
im1(1:rows, 1:10, 3) = uint8(0); % blue channel

figure  % Creating a new figure window
image(im1) % Displaying the image


%% Creating a random true-colour image 

im2(:,:,3) = rand(480);
im2(:,:,1) = rand(480); 
im2(:,:,2) = rand(480); 

whos im2 
max(im2(:))

figure
image(im2)

% Saving a true-color image to the disk
imwrite(im2, 'rand_image.png','png') 


%% Colour-mapped Images

% displaying the current colormap
disp(colormap) % displays the RGB components of the default color map
size(colormap) % check the size of the colormap. Note that it has 64 colors

% Creating an image where pixel points to a 
% particular color in the color map
im3 = zeros(480); % Creates a 2D matrix 

im3(:) = 1; % sets all elements in the matrix to the 1st color in the color map
image(im3)

im3(:) = 30; % sets all elements in the matrix to the 30th color in the color map
image(im3)

im3(:) = 45; % sets all elements in the matrix to the 45th color in the color map
image(im3)

im3(:) = 64; % sets all elements in the matrix to the 64th (last) color in the color map
image(im3)


% Creating and displaying a 480 x 480 color-mapped image 
% in which each pixel shows a random color from the 
% current color map
im4 = rand(480); % each value can range from 0 to 1
[rows, cols] = size(colormap);
im4 = uint8(im4 * (rows - 1)) + 1;
image(im4)


% Creating a 400-pixels wide color-mapped color image 
% which contains 10-pixels high strips, showing colours
% in the current colour map.
[numColors, x] = size(colormap);
stripHeight = 10;
im5 = zeros(stripHeight*numColors, 400);
for i = 1:numColors
    stripStartRow = (i-1) * stripHeight + 1;
    im5(stripStartRow: stripStartRow+stripHeight, :) = i;
end
image(im5)

% Built-in color maps: parula, jet, winter, summer
% Note how the display of the above im5 is changed 
% with the following statements
colormap(jet)
colormap(winter)
colormap(summer)
colormap(parula)

% Saving a color-mapped image
imwrite(im5, colormap, 'strips.png','png') 

imx = imread('strips.png');

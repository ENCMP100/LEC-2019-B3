
%% Working with sounds

clear
clc

load 'gong.mat'; % loading sound wave from a mat file.
whos
plot(y)
sound(y); % plays the sound at default sampling frequency determined by constant Fs

% loading sound wave from a mat file and 
% playing it with the default sampling frequency 
% of 8192 samples/sec
load 'handel.mat'; 
plot(y)
sound(y); 

% specifying a different sampling frequency.
% playing twice faster. Note that the play time 
% will be half now.
sound(y, 16384); 

% Creating a tone
f = 800; % frequency in Hertz
fs = 8192; % sampling frequency
t = 0: 1/fs : 2; % time in seconds
y = sin(2*pi*f.*t);
sound(y, fs)

% Creating and playing a movie
% ============================

clear
close all
clc
figure

n = 60; % number of frames for the movie
M = repmat(getframe, n); %pre-allocating array
for t = 1 : n
    theta = 1:360;
    phase = 2*t;
    y = sind(theta + phase);
    plot(y, 'LineWidth', 2);
    M(t) = getframe;
end
movie(M);


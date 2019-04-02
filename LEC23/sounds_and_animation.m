
%% Working with sounds

clear
clc

load 'gong.mat'; % loading sound wave from a mat file.
whos
plot(y)
sound(y); % plays the sound at default sampling frequency determined by constant Fs

% Specifying sampling frequency 8192 samples/sec
load 'handel.mat'; 
sound(y, 8192); 

% specifying a different sampling frequency (twice as the default frequency).
sound(y, 16384); 


%% Two moe sound signals: chirp and train
clear
clc

subplot(2,1,1)
load chirp
whos
plot(y)
ylabel('Amplitude')
title('Chirp')
sound(y)

subplot(2,1,2)
load train
whos
plot(y)
ylabel('Amplitude')
title('Train')
sound(y)


%% Creating a sequence of two tones
fs = 8192; % sampling frequency
t = 0: 1/fs : 0.4; % time in seconds

f1 = 800; % frequency in Hertz
tone_1 = sin(2*pi*f1.*t);
sound(tone_1, fs)

f2 = 1500;
tone_2 = sin(2*pi*f2.*t);
sound(tone_2, fs)

y = repmat([tone_1 tone_2], 1, 8);
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


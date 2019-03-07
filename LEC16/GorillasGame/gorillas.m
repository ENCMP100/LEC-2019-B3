% GORILLAS:This is a MATLAB implementation of a simplified 
% version of the game Gorillas which was first introduced 
% with MS-DOS. 
%
% This project was initially adapted to the ENCMP course by Dr. Dileepan
% Joseph.
% 
% This coude is released under MIT License
%
% March 07, 2019


% Reset the envoronment
close all 
clear 

% Set some initial parameters
w = 12; % widith of a buuilding in meters
N = 10; % nnumber of buildings in the stage
minHeight = 10; % minimum building height
maxHeight = 75; % maximum building height

% Set up the stage by creating a bar chart (10 bars, each 12 units wide)
[stageX, stageY] = setstage(w, N, minHeight, maxHeight);

% Randomly positioning players (gorillas)
[player1X, player1Y, player2X, player2Y] = setplayers(stageX, stageY);


%% Player 1 shoots a banana
clc
disp('Gorilla facing east:');
a0 = round(input('    Angle (degrees)? '));
v0 = round(input('    Velocity (m/s)? '));

% possible x values for player 1's projectile. 
x = linspace(player1X, max(stageX)); % towards east

% calculating y values of the projectile
y = projectile(x, player1X, player1Y, a0, v0);

plot(x,y,'r-');


%% Player 2 shoots a banana
clc
disp('Gorilla facing west:');
a0 = round(input('    Angle (degrees)? '));
v0 = round(input('    Velocity (m/s)? '));

a0 = 180 - a0; % angles measured from the anti-clockwise direction 

% possible x values for player 2's projectile. 
x = linspace(player2X, min(stageX)); % towards the west

% calculating y values of the projectile
y = projectile(x, player2X, player2Y, a0, v0);

plot(x,y,'b-');



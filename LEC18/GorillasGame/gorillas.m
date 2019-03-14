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
stg = setstage(w, N, minHeight, maxHeight);

% Randomly positioning players (gorillas)
[p1, p2] = setplayers(stg);


% Player 1 shoots a banana
[a0, v0] = getinputs(true);

% possible x values for player 1's projectile. 
x = linspace(player1X, max(stg.X)); % towards east

% calculating y values of the projectile
y = projectile(x, p1, a0, v0);

plot(x,y,'r-');


% Player 2 shoots a banana
[a0, v0] = getinputs(false);

% possible x values for player 2's projectile. 
x = linspace(player2X, min(stg.X)); % towards the west

% calculating y values of the projectile
y = projectile(x, p2, a0, v0);

plot(x,y,'b-');



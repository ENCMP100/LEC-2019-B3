% GORILLAS:This is a MATLAB implementation of a simplified 
% version of the game Gorillas which was first introduced 
% with MS-DOS. 
%
% This project was initially adapted to the ENCMP course by Dr. Dileepan
% Joseph.
% 
% This coude is released under MIT License
%
% March 05, 2019


%% Reset the envoronment

close all % closing all figures
clc % clear the command window
clear % clear all workspace variables

%% Set up the stage by creating a bar chart (10 bars, each 12 units wide)

% Launch a figure window
figure(1)
hold on
rng('shuffle');

% Set some initial parameters
w = 12; % widith of a buuilding in meters
N = 10; % nnumber of buildings in the stage
minHeight = 10; % minimum building height
maxHeight = 75; % maximum building height

stageX = 1 : w : w * N; % x values
stageY = randi([minHeight maxHeight], 1, N);
bar(stageX, stageY, 1)

% Set x and y axis limits such that 
axis([0 max(stageX) 0 2*maxHeight])

title('{\itGorillas} in MATLAB');
xlabel('Position (m)');
ylabel('Height (m)');


%% Randomly positioning players (gorillas)

% Place player 1 in the west half of the stage by selecting a suitale
% building index. This player is facing east.
idx1 = randi([2 round(length(stageX)/2)]); 
player1X = stageX(idx1);
player1Y = stageY(idx1) + 3;
plot(player1X, player1Y, 'p', 'MarkerSize', 20, 'MarkerFace', [1 0 1])


% Place player 2 on a building which is east to the first player. This
% player is facing west.
idx2 = randi([idx1+1 length(stageX)-1]);
player2X = stageX(idx2);
player2Y = stageY(idx2) + 3;
plot(player2X, player2Y, 'p', 'MarkerSize', 20, 'MarkerFace', 'r')


%% Player 1 throws a banana

disp('Gorilla (facing east):');
a0 = round(input('    Angle (degrees)? '));
v0 = round(input('    Velocity (m/s)? '));

% x values for player 1's throw. 
x = linspace(player1X, max(stageX)); % towards east

% calculating y values
x0 = player1X;
y0 = player1Y;
y = y0 + (x-x0) * tand(a0) - 0.5 * 9.81 * ((x-x0)/(v0*cosd(a0))).^2;
plot(x,y,'r-');

%% Player 2 throws a banana

disp('Gorilla (facing west):');
a0 = round(input('    Angle (degrees)? '));
v0 = round(input('    Velocity (m/s)? '));

a0 = 180 - a0; % angles measured from the anti-clockwise direction 

% x values for player 2's throw. 
x = linspace(player2X, min(stageX)); % towards the west

% calculating y values
x0 = player2X;
y0 = player2Y;
y = y0 + (x-x0) * tand(a0) - 0.5 * 9.81 * ((x-x0)/(v0*cosd(a0))).^2;
plot(x,y,'b-');



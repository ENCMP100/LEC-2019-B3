% GORILLAS:This is a MATLAB implementation of a simplified 
% version of the game Gorillas which was first introduced 
% with MS-DOS. 
%
% This project was initially adapted to the ENCMP course by Dr. Dileepan
% Joseph.
% 
% This coude is released under MIT License
%
% Jan 29, 2019


%% Reset the envoronment

clc % clear the command window
clear % clear all workspace variables
clf

% Launch a figure window
figure(1)
hold on
rng('shuffle');

% Set some initial parameters
buildingWidth = 12; % in meters
buildingCount = 10;
minHeight = 25; % in meters
maxHeight = 75; % in meters


%% Set up the stage by creating a bar chart (10 bars, each 12 units wide)

stageX = 1 : buildingWidth : buildingWidth*buildingCount; % x values
stageY = randi([minHeight maxHeight], 1, buildingCount);
bar(stageX, stageY, 1) % set bar width to 1 for simplicity so that bars will touch each other

% Let's add some extra space above the top of the buildings 
xmin = min(stageX) - buildingWidth; % subtracted buildingWidth to leave some empty space at the begining
xmax = max(stageX) + buildingWidth;
ymin = 0; % Set the ground level to be the minimum of y axis
ymax = 2 * maxHeight; % Leave lot of space above the max building height.
axis([xmin xmax ymin ymax])


title('{\itGorillas} in MATLAB');
xlabel('Position (m)');
ylabel('Height (m)');


%% Randomly positioning players (gorillas)

% Place player 1 on a building in the west half of the stage
idx1 = randi([1 round(length(stageX)/2)]);
player1X = stageX(idx1);
player1Y = stageY(idx1) + 3; % Add 3 so that the marker stays on top of the building
plot(player1X, player1Y, 'p', 'MarkerSize', 18, 'MarkerFaceColor', 'r')


% Place player 2 on a building east to the first player's building
idx2 = randi([idx1+2 round(length(stageX))]);
player2X = stageX(idx2);
player2Y = stageY(idx2) + 3;  % Add 3 so that the marker stays on top of the building
plot(player2X, player2Y, 'p', 'MarkerSize', 18, 'MarkerFaceColor', 'g')


%% Players throwing banana
player = 1;

while ~isempty(player)
    
    if player == 1
        disp('Gorilla (facing east):');
        a0 = round(input('    Angle (degrees)? '));
        v0 = round(input('    Velocity (m/s)? '));
        
        x0 = player1X;
        y0 = player1Y + 3;  
        
        x = linspace(x0, max(stageX));
        y = y0 + (x-x0) * tand(a0) - 9.81/2/(v0*cosd(a0))^2 * (x-x0).^2;        
        plot(x,y, 'r-') 
        
        player = 2; % Set the player for the next iteration
    else
        disp('Gorilla (facing west):');
        a0 = round(input('    Angle (degrees)? '));
        v0 = round(input('    Velocity (m/s)? '));
        
        x0 = player2X;
        y0 = player2Y + 2;
        
        a0 = 180 - a0; % Angle measured counter-clockwise from the positive direction of x axis.

        x = linspace(min(stageX), x0);
        y = y0 + (x-x0) * tand(a0) - 9.81/2/(v0*cosd(a0))^2 * (x-x0).^2;
        plot(x,y, 'g-');
        
        player = 1; % Set the player for the next iteration
    end
    
    
    
    
    

end


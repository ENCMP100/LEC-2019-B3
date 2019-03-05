% GORILLAS:This is a MATLAB implementation of a simplified 
% version of the game Gorillas which was first introduced 
% with MS-DOS. 
%
% This project was initially adapted to the ENCMP course by Dr. Dileepan
% Joseph.
% 
% This coude is released under MIT License
%
% Feb 14, 2019


%% Reset the envoronment

clc % clear the command window
clear % clear all workspace variables
clf % clear the figure

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
xmin = min(stageX); 
xmax = max(stageX); 
ymin = 0; % Set the ground level to be the minimum of y axis
ymax = 2 * maxHeight; % Leave lot of space above the max building height.
axis([xmin xmax ymin ymax])


title('{\itGorillas} in MATLAB');
xlabel('Position (m)');
ylabel('Height (m)');


%% Randomly positioning players (gorillas)

% Place player 1 on a building in the west half of the stage
idx1 = randi([1 round(buildingCount/2)]);
player1X = stageX(idx1);
player1Y = stageY(idx1) + 3; % Add 3 so that the marker stays on top of the building
plot(player1X, player1Y, 'p', 'MarkerSize', 18, 'MarkerFaceColor', 'r')


% Place player 2 on a building east to the first player's building
idx2 = randi([idx1+2 buildingCount]);
player2X = stageX(idx2);
player2Y = stageY(idx2) + 3;  % Add 3 so that the marker stays on top of the building
plot(player2X, player2Y, 'p', 'MarkerSize', 18, 'MarkerFaceColor', 'g')


activePlayer = 1;

while true

    if activePlayer == 1
        %% Player 1 throwing banana

        disp('Gorilla (facing east):');
        a0 = round(input('    Angle (degrees)? '));
        v0 = round(input('    Velocity (m/s)? '));

        x0 = player1X;
        y0 = player1Y + 2;  

        %% Collision detection
        % ==================

        % wallPositions1 = x0+buildingWidth/2 : buildingWidth: max(stageX);
        % wallPositions2 = [x0 walPositions1(2:end)];
        % 
        % wallPos = [wallPositions2; wallPositions1];
        % 


        xmax = [];
        for idx = idx1+1 : buildingCount % go through all buildings from the next towards the target

            % building wall locations
            x = [stageX(idx)-buildingWidth/2 stageX(idx)+buildingWidth/2];

            % hight of trajectory at the building walls
            y = y0 + (x-x0) * tand(a0) - 9.81/2/(v0*cosd(a0))^2 * (x-x0).^2;  

            check = y < stageY(idx);

            if check(1)
                xmax = stageX(idx) - buildingWidth/2;
                break;
            elseif check(2)
                xmax = stageX(idx) + buildingWidth/2;
                break;
            end
        end

        if isempty(xmax)
            xmax = max(stageX);
        end


        %% Plot the trajectory
        x = linspace(x0, xmax);
        y = y0 + (x-x0) * tand(a0) - 9.81/2/(v0*cosd(a0))^2 * (x-x0).^2;        
        plot(x,y, 'r-') 
        
        activePlayer = 2;
    else
        %% Player 2 throwing banana

        disp('Gorilla (facing west):');
        a0 = round(input('    Angle (degrees)? '));
        a0 = 180 - a0;
        v0 = round(input('    Velocity (m/s)? '));

        x0 = player2X;
        y0 = player2Y + 2;  

        %% Collision detection
        % ==================

        % wallPositions1 = x0+buildingWidth/2 : buildingWidth: max(stageX);
        % wallPositions2 = [x0 walPositions1(2:end)];
        % 
        % wallPos = [wallPositions2; wallPositions1];
        % 


        xmax = [];
        for idx = idx1+1 : buildingCount % go through all buildings from the next towards the target

            % building wall locations
            x = [stageX(idx)-buildingWidth/2 stageX(idx)+buildingWidth/2];

            % hight of trajectory at the building walls
            y = y0 + (x-x0) * tand(a0) - 9.81/2/(v0*cosd(a0))^2 * (x-x0).^2;  

            check = y < stageY(idx);

            if check(1)
                xmax = stageX(idx) - buildingWidth/2;
                break;
            elseif check(2)
                xmax = stageX(idx) + buildingWidth/2;
                break;
            end
        end

        if isempty(xmax)
            xmax = max(stageX);
        end


        %% Plot the trajectory
        x = linspace(x0, xmax);
        y = y0 + (x-x0) * tand(a0) - 9.81/2/(v0*cosd(a0))^2 * (x-x0).^2;        
        plot(x,y, 'r-') 

        activePlayer = 1;
    end
end



function [stageX, stageY] = setstage(buildingWidth, buildingCount, minHeight, maxHeight)
%
% SETSTAGE: Sets the stage for the game and returns the two vectors
% representing x coordinates of building positions and the heights of these
% buildings.
%

% Launch a figure window
figure(1)
hold on
rng('shuffle');

% Set some initial parameters

stageX = 1 : buildingWidth : buildingWidth * buildingCount; % x values
stageY = randi([minHeight maxHeight], 1, buildingCount);
bar(stageX, stageY, 1)

% Set x and y axis limits such that 
axis([0 max(stageX) 0 2*maxHeight])

title('{\itGorillas} in MATLAB');
xlabel('Position (m)');
ylabel('Height (m)');

end
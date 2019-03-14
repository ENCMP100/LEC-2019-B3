function [p1x, p1y, p2x, p2y] = setplayers(stageX, stageY)
%
% SETPLAYERS: Sets two players on the given stage and returns their x,y coordinates.
% The first player always in the west half of the stage (i.e. facing east)
% and the second player is located east to the first player (i.e. facing
% west).

% Place player 1 in the west half of the stage by selecting a suitale
% building index. This player is facing east.
idx1 = randi([2 round(length(stageX)/2)]); 
p1x = stageX(idx1);
p1y = stageY(idx1) + 3;
plot(p1x, p1y, 'p', 'MarkerSize', 20, 'MarkerFace', [1 0 1])


% Place player 2 on a building which is east to the first player. This
% player is facing west.
idx2 = randi([idx1+2 length(stageX)-1]);
p2x = stageX(idx2);
p2y = stageY(idx2) + 3;
plot(p2x, p2y, 'p', 'MarkerSize', 20, 'MarkerFace', 'r')

end
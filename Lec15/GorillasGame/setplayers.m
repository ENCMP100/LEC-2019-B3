function [p1x, p1y, p2x, p2y] = setplayers(stageX, stageY)
%
% SETPLAYERS: Sets two players on the given stage and returns their x,y coordinates.
% The first player always in the west half of the stage (i.e. facing east)
% and the second player is located east to the first player (i.e. facing
% west).

function [a0, v0] = getinputs(isFirstPlayer)
% 
% GETINPUTS: Gets the input initial angle and velocity for a given player
%

clc
if isFirstPlayer
    disp('Gorilla facing east):');
else
    disp('Gorilla facing west:');
end

a0 = round(input('    Angle (degrees)? '));
v0 = round(input('    Velocity (m/s)? '));

if ~isFirstPlayer
    a0 = 180 - a0;
end
end
% CIRCLEINFO_TEST: This script repeatedly prompts to input radius of a
% cicle and then calculates and prints the area and the circumference of
% the circle. The script is terminated when a user inputs an empty value
% for the radius.
%
% Author: YOUR NAME
% ENCMP100 B3 - Winter 2019.

rad = input('Enter radius: ');

while ~isempty(rad)
    
    [area, circ] = circleinfo(rad);
    
    % Output results
    fprintf('Radius = %f\nArea = %f\nCircumference = %f\n\n', rad, area, circ)

    % Take the radius again
    rad = input('Enter radius: ');
end
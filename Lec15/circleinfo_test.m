% CIRCLEINFO_TEST: This script repeatedly prompts to input radius of a
% cicle and then calculates and prints the area and the circumference of
% the circle. The script is terminated when a user inputs an empty value
% for the radius.
%
% Author: YOUR NAME
% ENCMP100 B3 - Winter 2019.

radius = input('Enter radius: ');

while ~isempty(radius)
    
    if radius <= 0
        disp('Radius must be positive')
    else

    % Calculate the area and circumference
        area = pi * radius^2;
        circumference = 2 * pi * radius;

        % Output results
        fprintf('Radius = %f\nArea = %f\nCircumference = %f\n\n', radius, area, circumference)
    end

    % Take the radius again
    radius = input('Enter radius: ');

end
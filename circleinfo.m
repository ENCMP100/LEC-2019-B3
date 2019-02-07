% CIRCLEINFO: Given the radius, this script calculates the circumference
% and area of a circle and display them.
%
% Author: YOUR NAME
% ENCMP100 B3, Winter 2019.
% Reference: Attaway, chapter 3.1 to 3.3

% Take the radius
radius = input('Enter radius: ');

if radius < 0
    error('Invalid input');
end

% Calculate the area and circumference
area = pi * radius^2;
circumference = 2 * pi * radius;

% Output results
fprintf('Radius = %f\nArea = %f\nCircumference = %f\n', radius, area, circumference)


%{
radius
area
circumference
%}




%
% Using Graphic Objects
%
% Reference: Attaway Chapter 11.1, 11.2
%

clear
close all
clc

% Creating a figure and get a "handle" to it

h1 = figure;
whos 

% see the details of h1 on the command window
disp(h1)

% get the value of a property
val = get(h1, 'Color');
disp(val)

% set the value of a property
set(h1, 'Color', [1 0 0])

% Check the "Parent" property of h1
get(h1, 'Parent')

% Check the "Children" property of h1
get(h1, 'Children')


% Let's create a plot on this figure
x = linspace(0, 360);
y = sind(x);
h2 = plot(x, y);
disp(h2)
whos h2

% Let's check what is the parent of h2
p2 = get(h2, 'Parent');
disp(p2)
whos p2

% Let's check the parent of p2
p2_2 = get(p2, 'Parent');
disp(p2_2)
whos p2_2



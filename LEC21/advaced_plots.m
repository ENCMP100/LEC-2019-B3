% Advanced Plotting

% Initialization
clear 
close all
clc

% Ploting population vs year using different plot types
year = 2013:2017;
population = [0.9 1.4 1.7 1.3 1.8];

figure

% Creating a subplot containing a line graph
subplot(2,2,1)
plot(year,population)
title('plot')
xlabel('Year')
ylabel('Population (mil)')


% Creating a subplot containing a bar graph
subplot(2,2,2)
bar(year,population)
title('bar')
xlabel('Year')
ylabel('Population (mil)')

% Creating a subplot containing an area graph
subplot(2,2,3)
area(year,population)
title('area')
xlabel('Year')
ylabel('Population (mil)')

% Creating a subplot containing a stem graph
subplot(2,2,4)
stem(year,population)
title('stem')
xlabel('Year')
ylabel('Population (mil)')


% Advanced bar garphs
% ===================
figure
groupedValues = [8 19 43 25; ...
             35 44 30 45];

% Bar graph of groups (each group represents values from a row of a matrix)
subplot(1,2,1)
bar(groupedValues)
xlabel('Group')
ylabel('Values')

% Stacked bar graph of groups
subplot(1,2,2)
bar(groupedValues, 'stacked')
xlabel('Group')
ylabel('Values')
% y value of a top of a bar is the cumulative value of itself and all previous bars

% Histogram
% =========
figure
quizMarks = [10 8 5 10 10 6 9 7 8 6 10 1 8];

% Plots frequency of a data set without specifying bin size
subplot(1,2,1)
histogram(quizMarks) 
xlabel('Grade')
ylabel('# of Students')
title('Quiz Grades')

% Specifying bin size
subplot(1,2,2)
histogram(quizMarks, 3) % 3 bins
xlabel('Grade') 
ylabel('# of Students')
title('Quiz Grades')


% Pie charts
% ==========
data = [11 14 8 3 1];
figure

% unlabeled pie chart
subplot(1,2,1)
pie(data)

% labeled pie chart
subplot(1,2,2)
pie(data, {'A', 'B', 'C', 'D', 'E'})

% Log-scale plots
% ===============
figure

% loglog - uses log scale for both x and y axes
x = 1:10;
y = 10.^x;

subplot(1,2,1)
plot(x,y)
grid on
title('Linear Plot')

subplot(1,2,2)
loglog(x,y);
grid on
title('Log Plot')

figure
% semilogx - uses log scale the  x axis
subplot(1,2,1)
semilogx(x,y)
grid on
title('Semilog x')

subplot(1,2,2)
semilogy(x,y);
grid on
title('Semilog y')


% Animated plots
% ==============

% comet - animated line plot
x = -pi:pi/200:pi; % some x values
y = tan(sin(x))-sin(tan(x)); % some y values
figure

subplot(2,1,1)
plot(x,y) % none animated plot

subplot(2,1,2)
comet(x,y) % animated plot


% Saving or printing a figure
% ============================
print -dpng myplot.png  % saving the current figure using command-line format

print('myfig.pdf', '-dpdf') % saving the current figure using function format

print % printing to the current figure to the default printer
% Lecture 7 Plots
% Chapter 3.5 Attaway


% This is a really simple plot of just one point!
% ===============================================
x = 11;
y = 48;
plot(x,y,'r*')

% Change the axes and label them
axis([9 12 35 55]) % specify [xmin xmax ymin ymax]
xlabel('Time')
ylabel('Temperature')
% Put a title on the plot
title('Time and Temp')


% Plotting two graphs on a the same figure
% ========================================

clf % clear figure
x = 0:10:360;
y = sind(x);
plot(x,y, 'o--');

% plotting a second curve on the same axes
y2 = cosd(x);
hold on
plot(x,y2,'+--m')   

axis([0 360 -1 1])
xlabel('x');
ylabel('sin(x) or cos(x)')

% Adding a legend. Graph labels should be in the same order where they were
% plotted. 
% The optional 'Location' property specifies where the legend should
% appear.
legend('sin', 'cos', 'Location', 'north') 

% Turn the grid on.
grid on


% Plotting two graphs on a the same figure but on different of sub plots
% ======================================================================

figure(1) % opening a numbered figure
x = 0:20:360;
y = sind(x);

subplot(2,1,1) % a sub plot with 2 rows, 1 column and select the 1st sub plot
plot(x,y); % a simple line graph
xlabel('angle x in degrees')
ylabel('sin(x)')
title('sin(x) vs x line graph')
axis([0 360 -1 1])

subplot(2,1,2) % the second sub plot
bar(x,y) % a bar graph
xlabel('angle x in degrees')
ylabel('sin(x)')
title('sin(x) vs x bar graph')
axis([0 360 -1 1])



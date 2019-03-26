%
% Using Graphic Objects
%
% Reference: Attaway Chapter 11.1, 11.2
%

clear all
close all
clc

% Let's create a complex figure with multiple plots in it. Let's also take
% handles from apporpriate commands.

h_fig_1 = figure(1);

h_sub_plot_1 = subplot(1,2,1);
hold on
theta = linspace(0, 360);
h_sin_plot = plot(theta, sind(theta));
h_cos_plot = plot(theta, cosd(theta));
h_legend_1 = legend('Sine', 'Cosine');

h_sub_plot_2 = subplot(1,2,2);
hold on
x = linspace(-1, 1);
h_abs_plot = plot(x, abs(x));
h_parabola_plot = plot(x, x.^2);
h_legend_2 = legend('y = abs(x)', 'y = x^2');

% Let's create a second figure of a bar chart
h_fig_2 = figure(2);

t = 1:10;
y = rand(1, 10);
h_bar = bar(1:10, rand(1,10));
h_legend_fig_2 = legend('y = bar');


% Now, let's see how these graphic objects are situated in the 
% graphic tree structure.

% Use the groot to get access to the root of the tree structure.
graphicRoot = groot;

% Let's see the properties of the graphic root object
disp(graphicRoot)

% Let's see the children of the graphic root
disp(graphicRoot.Children) % we got 2 figure objects there

disp(graphicRoot.Children(1)) 

% Note how figure names are change in the title bar by the statements
h_fig_1.Name = 'My Multi-plot Figure';
h_fig_2.Name = 'My Bar Chart';

% Note that the following produces the same result as disp(graphicRoot.Children(1)) 
disp(graphicRoot.Children(1)) 
disp(h_fig_1)


% Similarly, let's compare the second child of the graphic root with
% h_fig_2. Note that both of them refer to the same figure.
disp(graphicRoot.Children(2)) 
disp(h_fig_2)


% Let's see the children of the first child of graphic root
disp(h_fig_1.Children)
disp(h_fig_1.Children(2))

% get all properties and do some futher manipulations
get(h_fig_1.Children(2)) 
h_fig_1.Children(2).get


% Let's manipulate some further properties
disp(h_sub_plot_1)
disp(h_sub_plot_1.XLabel)
h_sub_plot_1.XLabel.String = 'Angle in Degrees';
set(h_sub_plot_1.YLabel, 'String', 'Function Value f(x)');


% Let's edit some properties of the sine and cosine line graphs
disp(h_sin_plot)
h_sin_plot.LineWidth = 2.5;
h_cos_plot.LineWidth = 2.5;
h_cos_plot.LineStyle = '--';

% Let's do the same operations to the absolute graph, but using the
% functional form of the set function
set(h_abs_plot, 'LineWidth', 2.5)
set(h_abs_plot, 'LineStyle', '--')

% Let's do these operations to the parabolic graph, but using the
% object-oriented way of calling the set function using the "dot" operator
h_parabola_plot.set('LineWidth', 2.5)
h_parabola_plot.set('LineStyle', ':')

% gca and gcf: these built in functions tell you what the current axes and
% the current figure are, respectively
gca
gcf

clf(gcf) % clears the current figure


%
% Saving to binary mat files and loading from them
%
% Reference: Attaway, Chapter 9.1
%
% Lecture 19. March 19, 2019
%

clear
clc


myMat = rand(5);
myStr = "Hello, this is a string!";

% Saving the entire workspace to a matfile named mywork.mat
save mywork


% Checking the vaiables in the mat file
who -file mywork


% Appending another variable to the same file
myRange = 0:2:100;
save -append mywork myRange

who -file mywork


%% Loading data from a binary MAT file

% Clear the workspace, just to make sure all variables are deleted
% space.
clear
clc
whos

% Loading data from the MAT ile
load mywork

whos
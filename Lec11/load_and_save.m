
%% Saving data to a text file
mat  = randi(100, 5);
save mydata.dat mat -ascii

% view the file content on the command prompt
type mydata.dat

% Clear the workspace and load the data
clear
whos

load mydata.dat

whos


%% Appending another variable with same number of columns to the same file.
mat2 = rand(2,5)
save mydata.dat mat2 -ascii -append

% view the file content 
type mydata.dat


% clear the workspace and load the data
clear
load mydata.dat
whos


%% Append another variable with a different number of columns
mat3 = [1 2]
save mydata.dat mat3 -ascii -append

% view the file content 
type mydata.dat


% clear the workspace and load the data
clear
load mydata.dat


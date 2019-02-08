% Lecture 10 Part 1: Repetition or Loops
% Chapter 5.1, 5.2 amd 5.3


%% FOR loop (iterating through a fixed number of times
for i = 1:5
    fprintf('%d: Hello world\n', i);
end
    

vec = randi(99, 10, 1);
for i = vec
    fprintf('%d: Hello world\n', i);
end



%% Nested FOR loops
clear
clc

for a = 1:5
    for b = 1:3
        fprintf('a=%d, b=%d: Hello world\n', a, b);
    end
end


% An example from the book

% Prints a triangle of stars
% How many will be specified by a variable
% for the number of rows
rows = 3;
for i=1:rows
    % inner loop just iterates to the value of i
    for j=1:i
        fprintf('*')
    end
    fprintf('\n')
end


% Basic SUM function for matricies
mat = randi(20, 3, 4);
[rows,cols] = size(mat);
result = zeros(1, cols);
for c = 1:cols
    for r = 1:rows
        result(1,c) = result(1,c) + mat(r,c);
    end
end


%% EXERCISE: Create version 3 of "circleinfo.m" which would perform the
% computation for 5 times.



%% WHILE loop

val = 1;

while val < 0.5
    val = rand;
    fprintf('Value: %0.2f\n', val)
end

% See example: runsum.m






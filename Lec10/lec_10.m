% Lecture 10 Part 1: Repetition or Loops
% Chapter 5.1, 5.2 amd 5.3


%% FOR loop (iterating through a fixed number of times
for i = 1:5
    fprintf('%d: Hello world\n', i);
end
    
    
%% Nested FOR loops
for i = 1:5
    for j = 1:3
        fprintf('i=%d, j=%d: Hello world\n', i, j);
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
% result = ??
for r = 1:rows
    for c = 1:cols
        
    end
end


%% EXERCISE: Create version 3 of "circleinfo.m" which would perform the
% computation for 5 times.



%% WHILE loop

val = 1;

while val > 0.5
    val = rand;
    fprintf('Value: %0.2f\n', val)
end

% See example: runsum.m






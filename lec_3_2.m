% Lecture 3, part 2: Vectors and Matricies
% Chapter 2.1 Attaway

% Initializing a row vector
vec1 = [1 2 3 4 5]

vec2 = [1,2,3,4,5]



% using the colon operator
vec3 = 0:10

vec4 = 0:2:10 % 0 to 10 in increments of 2

vec5 = 0:2:5 % 


% creating linearly space vectors using the "linspace" function
vec6 = linspace(1,5,10) % 10 points from 1 to 5, inclusive
vec7 = linspace(1,5) % default count of 100 points


% Ex.
% create logarithemically spaced vectors using the "logspace" function



% using the "diff" function to compute the difference between adjescent
% elements of a vector



% Combining two vectors
vecA = [1:3];
vecB = linspace(1, 10, 5);
VecC = ?


% Accessing an elemnt of a vector
vecA = 1:2:10
vecA(2)

vecA(2) = 25;
vecA

% Accessing several elements of a vector using an index vector
vecA = 1:2:20
vecA([2,4,5]) % here, [2 4 5] is called the index vector.

vecA([2,4,5]) = 0;
vecA

vecA([2,4,5]) = [100 200 300];
vecA


% Column vectors
% ==============

% define column vectors by using semicolon to separate elements, instead of
% white space or comma
cv1 = [1;2;3;4;5]

% Alternatively, create a row vector and then use the "transpose" operator
% (single quote) to transpose it into a row vector
cv2 = [1:5]'

% Use index vector to access elements of a column vector, just the same way we
% did so for the row vector
cv2([2 3])

cv2([2 3]) = 100;
cv2

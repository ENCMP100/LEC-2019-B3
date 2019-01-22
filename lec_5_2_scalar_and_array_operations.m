% Lecture 5-2, Scalar and Array Operations
% Chapter 2.3 Attaway


% Scalar Operations
% =================
%
% These are performed between a scalar and a matrix (or a scalar and a
% vector)

% Scalara Addition and Subtraction

mat % dusplay the value in the command window
mat + 2
mat - 5

% Scalar Multiplication and Division
mat = [1:4; 5:8]
mat * 3 % all elements are multiplied by the scalar
mat / 2 % all elements are divided by the scalar


vec = 1:5
vec * 3
vec / 2


% Array Operations
% ================
%
% These are element-by-element operations between matricies (or vectors).
% Dimensions must be matched.

mat1 = [1:4; 5:8]
mat2 = [5:8; 12:15]

mat1 + mat2
mat1 - mat2
mat1 .* mat2 
mat1 ./ mat2
mat1 .\ mat2

mat1.^2 % element-by-element square






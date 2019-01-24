% Lecture 5-1, Vectors and Matricies
% Chapter 2.1 Attaway


% Size, Length and number of elements
% ===================================
mat1 = rand(4,2); % 4x2 matrix of random numbers
mat2 = rand(2,4); % 2x4 matrix
vec = 1:10;      % 1x10 row vector

% size
[r1,c1] = size(mat1)
[r2,c2] = size(mat2)
[r3,c3] = size(vec)

% Obtaining only one dimension
numRows = size(mat1, 1)
numCols = size(mat1, 2)

% length
l1 = length(mat1)
l2 = length(mat2)
l3 = length(vec)

% number of elements
n1 = numel(mat1)
n2 = numel(mat2)
n3 = numel(vec)


% Basic matrix transformations
% ============================

% transpose (interchanging rows to columns)
mat = [1:4; 5:8; 9:12]
mat2 = mat'

% fliplr: flip left to right
mat = [1:4; 5:8; 9:12]
mat2 = fliplr(mat)

% flipud - flip up and down
mat = [1:4; 5:8; 9:12]
mat2 = flipud(mat)


% rot90: rotating 90 degrees counterclockwise
mat = [1:4; 5:8; 9:12]
mat2 = rot90(mat)

% reshape: change the number of rows and number of columns, without
% changing the total number of elements. Elements are taken column-wise and
% from the sourse and then filled column-wise to the destination
mat = [1:4; 5:8; 9:12]
mat2 = reshape(mat, 2, 6)
mat3 = reshape(mat, 6,2)

% repmat: repeats a given matrix for a given number of rows and colunms
mat = [1 2; 3 4]
mat2 = repmat(mat, 2, 3)


% Empty vectors and operations associated with them
% =================================================

% creating an empty vector
emptyVec = [];

size(emptyVec)
length(emptyVec)
numel(emptyVec)

% Appending a value to an empty vector
vec1 = [emptyVec 4]


% Using an empty vector to delete a row of a matrix

mat = reshape(1:12, 4, 3); % a 4x3 matrix containing 1 to 12, filled column-wise

mat % just show the value of mat on the command window

% deleting the second row by assigning an empty vector to it.
mat(2,:) = [];
mat % see the resultant vector on the command window

% now delete the last column
mat(:, end) = [];
mat


% 3-dimensional matricies (multidimensional arrays)
% =================================================
myMat(:,:,1) = reshape(1:15, 3, 5);  % first layer; 3x5 matrix
myMat(:,:,2) = ones(3,5); % second later
myMat(:,:,3) = rand(3,5); % 3rd layer

myMat % display the matrix on the command window



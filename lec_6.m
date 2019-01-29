% Lecture 6 Matrix as function arguments, matrix multiplication, and matrix
% with input and output
% Chapter 2.2, 2.5 and 3.3 Attaway


% Creating a large matrix by repeating a smaller one
mat = [1 2; 3 4]
mat2 = repmat(mat, 3) % repeats over 3 rows and 3 columns
mat3 = repmat(mat, 3, 2) % repeats 3 rows and 2 columns



% Matricies and Vectors as Function Arguments
% ===========================================

% absolute value of all elements
mat = reshape(-5:6, 4, 3)
mat2 = abs(mat)


% sign function
vec = -2:2
vec2 = sign(vec)


% min / max functions
vec = [5:2:15]
min(vec) % minimum value of the vector
max(vec) % maximum value of the vector

mat = randi(99, 4, 3) 
min(mat) % results a row vector containing min of each column
max(mat) % results a row vector containing max of each column


vec = 1:4;
mat = randi(10, 3);

% sum and cumulative sum applies to vectors and matricies
disp(vec)
sum(vec) % sum of all elements
cumsum(vec) % cumulative sum vector


disp(mat)
sum(mat) % sum of elemnts in each column
cumsum(mat) % cumulative sum of each column

% product applies to vectors and matricies
disp(vec)
prod(vec) % product of all elements
cumprod(vec) % cumulative product of elements


disp(mat)
prod(mat) % product of elements in each column
cumprod(mat) % cumulative product of each column

% difference between adjuscent elements
disp(vec)
diff(vec)

disp(mat)
diff(mat) % diff of each column


% Matrix Multiplication
% =====================

% multiplication of two matricies
mat1 = randi(5,3,4) % 3x4 matrix
mat2 = randi(5,4,3) % 4x3 matrix

mat1 * mat2 % results a 3x3 matrix

mat2 * mat1 % results a 4x4 matrix



% multiplication between a vector and a matrix
vec = randi(5,1,3) % 3 element vector
mat = randi(5,3,4) % 3x4 matrix

vec *  mat % results a 1x4 row vector


% dot product between a row vector and a column vector
v1 = [1:4] % 1x4 row vector
v2 = randi(5,4,1) % 4x1 column vector

v1*v2
dot(v1,v2)



% Input/Output
% ============

% taking a numeric input (scalar, vector or matrix)
val = input('Enter a numeric value: ')

% taking a character or character-array input
val = input('Enter anything: ', 's')

% Output using disp function
mat = reshape(1:15, 5, 3);
disp(mat)

disp('Hello World!')

% fprintf statements
% ------------------

% printing a string with one integer
val = 64;
fprintf('The value is %d, for sure!\n',val) % \n represents the newline


% printing a string with integers and floating points
x = 255;
y = 7;
fprintf('%d divided by %d is %f\n', x, y, x/y);

% limiting the number of decimal places in floating point numbers
fprintf('%d divided by %d is %.3f in three decimal places.\n', x, y, x/y);

% examples with display field widths and 
% trailing zeros for decimal places when necessary

price = 12.5;
fprintf('Price = %5.2f\n', price)
fprintf('GST   = %5.2f\n', price*0.05)
fprintf('Total = %5.2f\n', price*1.05)


% printing vectors
vec = 1:5;
fprintf('%d ', vec) % prints all elements in one line
fprintf('%d\n', vec) % print all elements, each in a new line

% printing matricies
mat = reshape(1:12, 3, 4)';

fprintf('%d ', mat) % takes elements column by column and prints in one line

fprintf('%d\n', mat) % takes elements column by column and prints value one per line

fprintf('%d %d\n', mat) % takes elements column by column and prints two per line

% NOTE: To print values row by row, we should pass the transpose to fprintf
fprintf('%d %d %d\n', mat')

% let's change the above to display each value in a width of 2 characters
fprintf('%2d %2d %2d\n', mat')

% how about using disp
disp(mat)




% Lecture 8 Relational Expressions, Logical Vectors and if/else/elseif
% Chapter 1.6, 2.4, and 4.1 Attaway


% Relational Expressions
% ======================
5 > 3
5 >= 3
5 < 1
5 <= 1
5 == 1
5 ~= 1


% logical variables
% =================
var1 = true;
var2 = false;


inVal = input('Enter a number: ');
isZero = inVal == 0;
isPositive = inVal > 0;
isNegative = inVal < 0;


% logical operators
% =================

% logical OR and AND
2 < 4 || 'a' == 'c'  % the second operand is not even evaluated -- short circuit
5 < 4 || 'a' == 'c'  % both operands are evaluated

2 < 4 && 'a' == 'c'  % both operands are evaluated
5 < 4 && 'a' == 'c'  % the second operand is not even evaluated -- short circuit

% negation
~ (4 < 5)
~ 4 < 5    % READ chapter 2, page 67 for operator precedence

% function forms
or(2 < 4, 'a' == 'c')
and(2 < 4, 'a' == 'c')


% exclusive OR
xor(2 < 4, 'a' == 'c')

v1 = xor(false, false)
v2 = xor(false, true)
v3 = xor(true, false)
v4 = xor(true, true)


% logical vectors
% ===============
clear

vec = randi([50, 100], 1, 10) % a random vector
v2 = vec > 75 % generates a logical vector
v3 = v2 + 5 % an arithmatic operation on a logical vector results a double vector

whos

mat1 = true(4)
mat2 = false(3,2)

% type casting
mat = randi([-1, 1], 4)
mat2 = logical(mat)


% built-in logical functions 
v1 = logical([0 0 0 0 0 0 0])
v2 = logical([1 1 0 1 0 1 0])
v3 = logical([1 1 1 1 1 1 1])

any_1 = any(v1)
any_2 = any(v2)
any_3 = any(v3)

all_1 = all(v1)
all_2 = all(v2)
all_3 = all(v3)

mat = logical([0 1 1 0 1; 0 0 1 0 1; 0 1 1 0 1])
any_mat = any(mat)
all_mat = all(mat)

% finding indicies of non-zero elements
find(v1)
find(v2)
find(v3)

find(mat)


v1 = logical([0 1 0 0 0 0 0])
v2 = logical([1 1 0 1 0 1 0])
v3 = v2

isequal(v1, v2)
isequal(v2, v3)

mat1 = rand(3) < 0.5
mat2 = rand(3) < 0.5
mat3 = mat2

isequal(mat1, mat2)
isequal(mat2, mat3)


% element-wise or array operators
v1 = logical([0 1 0 0 0 0 0])
v2 = logical([1 1 0 1 0 1 0])
v3 = logical([1 1 1 1 1 1 1])

v1 == v2 % element-wise comparison.
mat1 == mat2

v1 | v2 % element-wise OR
mat1 | mat2

v1 & v2 % element-wise AND
mat1 & mat2

% function forms
or(v1, v2)
and(v1, v1)
xor(v1, v2)




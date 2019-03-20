%
% Cell Arrays
%
% Reference: Attaway, Chapter 8.1
%
% Lecture 19. March 19, 2019
%

clear
clc

% Creating a cell array containing different types of elements
cellVec = {12, 'aeiou', 1:100, "Hello World!"}

cellMat = {12, 'aeiou'; 1:100, "Hello World!"} 

whos
class(cellVec)
class(cellMat)


% Accessing elements of a cell array or cell matrix
val1 = cellVec{2}
cellVec{4} = 'Mary had a little lamb'

val2 = cellMat{1,2}
cellMat{2,2} = 'Mary had a little lamb'


% Cell arrays of charactor vectors
cvNames = {'Sue', 'Cathy', 'John'}

strlength(cvNames)

% Converting a cell array into a character array
strBirds = ["parrot", "pigeon", "Magpie"]
cellstr(strBirds)

% Joining all strings in a cell array into one string
cellArray = {'March' '19', '2019'}
strjoin(cellArray, '-')

% Splitting a string into separate sections
strsplit('2019-03-19', '-')
strsplit('the quick brown fox jumped over the lazy dog') % default delimiter of white space



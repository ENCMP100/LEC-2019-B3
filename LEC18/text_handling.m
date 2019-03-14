%
% Basic use of text and their related functions in Matlab
%
% Reference: Attaway - Chapter 7
%
% ENCMP 100 B3, March 14, 2019
%


% Define a text as a character array
myCharArray = 'Hello World';

% Define a text as a MATLAB string object. Note the use of double quotes
myString = "Hello World";

% Let's check the types and sizes of these two variables
whos

% Finding the length (number of characters)
length(myCharArray) % Returns the number of characters in myCharArray
length(myString) % Returns a scalar 1. 

strlength(myCharArray) % Returns the number of characters in myCharArray
strlength(myString) % Returns the number of characters in myString

% Accessing an element
myCharArray(1) % Returns the first character
myString(1) % Still returns the whole string because string is an object

myString{1} % Returns the character array which is inside the string object

myString{1}(1) % Returns the first character of the character 
               % array stored inside the string.

clear

% Defining several words as an array of character vectors
myCharArray1 = ['Joe'; 'Peter', 'Fernando']  % This does NOT work

myCharArray2 = char('Joe', 'Peter', 'Fernando') % This works but 
                                                 % it pads spaces
                                              
% Defining several words as an array of strings
myStringArray = ["Joe"; "Peter"; "Fernando"]

whos


% String Functions
% ================

%% strcat: Catenating Strings

clear
clc

% Concatenating two strings. Works for both char arrays and string objects.
cArray1 = 'Hello';
cArray2 = 'World';
result1 = strcat(cArray1, cArray2)

str1 = "Hello";
str2 = "World";
result2 = strcat(str1, str2)

% allocating a blank character array
myBlankArray1 = blanks(5) % allocate an row vector of 5 blank spaces
myBlankArray2 = blanks(5)' % allocate an column vector of 5 blank spaces

%% sprintf: Creating a Formatted String

% Using sprintf to generate a formatted character string
clear
clc

name = 'Ray Smith';
age = 20;
height = 5.2
message1 = sprintf('%s is %d years old and %.2f feet tall', ...
                    name, age, height)

message2 = sprintf("%s is %d years old and %.2f feet tall", ...
                    name, age, height)

whos

%% deblank: Removing Trailing White Spaces from a Char Array or a String

deblank('Hello!!      ')
deblank("Hello!!      ")

deblank('   World!!      ') % Kepps the leading whitespaces
deblank("   World!!      ") % Kepps the leading whitespaces

%% strtrim: Removing Leading and Trailing White Spaces

strtrim('   Hello!!      ') 
strtrim("   Hello!!      ") 


%% upper, lower: Converts to upper and lower case, respectively

upper('Hello World!')
upper("Hello World!")

lower('Hello World!')
lower("Hello World!")

%% String Comparisons Functions

% Case-sensitive comparison;
test = 'Hello';
strcmp(test, 'hello')
strcmp(test, 'Hello')
strcmp(test, "Hello")


% Case-insensitive comparison; Note the "i" in strcmpi
test = 'Hello';
strcmpi(test, 'hello') 
strcmpi(test, 'Hello')
strcmpi(test, "Hello")


% Partial comparisons (i.e. first n characters)
str1 = 'Hello John';
str2 = 'Hello Jackie';

strcmp(str1, str2)

strncmp(str1, str2, 5) % compare first 5 characters

% Case-insensitive partial comparison
str1 = 'Hello John';
str2 = 'hello Jackie';
strncmp(str1, str2, 5) % returns false
strncmpi(str1, str2, 5) % returns true. Note the "i" in strncmpi



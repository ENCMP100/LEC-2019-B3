%
% More text manipulations
%
% Reference: Attaway - Chapter 7
%
% ENCMP 100 B3, March 19, 2019
%

%% + operator for catenating string objects. Only works with strings, not char arrays
str1 = "Hello";
str2 = " World!!!";

result = str1 + str2;
disp(result)

% The result of the above + operator is identical to strcat function.
strcat(str1, str2)


%% {} operator 
% This can be used for converting a string object into a character array 
% or accessing character array inside a string object

myString = "Hello there ..."
myString{1}

myString{1} = 'How are you?';
myString



%% string: Converting other premitive types into strings

string('This is an input provided as a character array')

string(125)

string(rand(5))

string(true)

myVec = rand(1, 5)
myTest = myVec < 0.5
string(myTest)

%% strfind: Finding all occurrences of a sub-string inside a string

strfind('she sells sea shells in the sea shore', 'sh')
        

%% strrep: Replaces all occurrences of a sub-string with another string 

strrep('Be happy when others are happy even if you arn''t really happy', ...
       'happy', 'sad')

%% strtok: Splits a string by a given separator.

% Default tokenization with white spaces
[token, rest] = strtok('she sells sea shells in the sea shore')
[token, rest] = strtok(rest)
[token, rest] = strtok(rest)
[token, rest] = strtok(rest)
[token, rest] = strtok(rest)


str = '+1-780-492-9472';
[token, str] = strtok(str, '-')
[token, str] = strtok(str, '-')
[token, str] = strtok(str, '-')


%% isletter: Returns a logical vector, identifying which positions have ltters
isletter('Tom is 15 years old.')

%% isspace: Returns a logical vector, identifying which positions have white spaces
isspace('Tom is 15 years old.')

%% ischar: Returns scalar true if the input is a character array.
ischar('Tom is 15 years old.')
ischar("Tom is 15 years old.") % returns false because the input is a string


%% num2str: Converts a number to a string
val = num2str(125)
num2str(1:5)

%% str2num Converts a string to a number
val2 = str2num('1250')
str2num('12 45 84')




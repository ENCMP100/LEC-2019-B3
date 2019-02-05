% Lecture 9: Conditional Statements and "is" functions
% Chapter 4.1 to 4.5


%% IF statement
num = rand   

if num < 0.5
    disp('The number is smaller than 0.5')
end


%% EXERCISE: Create version 2 of "circleinfo.m" which would produce an error
% if a negative radius value is entered



%% IF/ELSE statement
num = rand;

if num < 0.5
    fprintf('The number %.2f is smaller than 0.5\n', num)
else
    fprintf('The number %.2f is greater than or equal to 0.5\n', num)
end




%% IF/ELSEIF/ELSE statement
num = rand;

if num < 0.5
    fprintf('The number %.2f is smaller than 0.5\n', num)
elseif num < 0.75
    fprintf('The number %.2f is greater than or equal to 0.5 but less than 0.75\n', num)
else
    fprintf('The number %.2f is greater than or equal to 0.75\n', num)
end


% A LOOOOONG if/elseif/else statements with all conditions testing EQUALITY
day = input('Enter the day number (Monday = 1, etc): ');
if day == 1
    disp('It''s Monday')
elseif day == 2
    disp('Yay! it''s ENCMP100 day')
elseif day == 3
    disp('It''s Wednesday')
elseif day == 4
    disp('Yay! it''s ENCMP100 day')
else
    disp('Can''t wait until next Monday ends')
end



%% SWITCH/CASE statement: a better alternative
day = input('Enter the day number (Monday = 1, etc): ');
switch day
    case 1
        disp('It''s Monday')
    case 2
        disp('Yay! it''s ENCMP100 day')
    case 3
        disp('It''s Wednesday')
    case 4
        disp('Yay! it''s ENCMP100 day')
    otherwise
        disp('Can''t wait until next ENCMP100 day')
end

% Even more compact version ...
day = input('Enter the day number (Monday = 1, etc): ');
switch day
    case 1
        disp('It''s Monday')
    case {2, 4}
        disp('Yay! it''s ENCMP100 day')
    case 3
        disp('It''s Wednesday')
    otherwise
        disp('Can''t wait until next ENCMP100 day')
end


%% is functions

% Used for checking or testing types

val = input('Just hit ENTER key ... ', 's'); % reading it as a character array
emptyTestResult = isempty(val)
letterTestResult = isletter(val)

val = input('Enter a single key: ', 's'); % reading it as a character array
emptyTestResult = isempty(val)
letterTestResult = isletter(val)

val = input('Enter a combination of letters and non-letters: ', 's'); % reading it as a character array
letterTestResult = isletter(val)


% data type testing with "isa" function
uintVal = uint8(10);
intval = int32(10);
singleVal = single(10);
doubleVal = double(10);
charVal = 'ABCD';

isa(uintVal, 'uint8') % true
isa(uintVal, 'uint16') % false
isa(uintVal, 'int32') % false
isa(uintVal, 'double') % false
isa(uintVal, 'char')
isa(uintVal, 'float') % false. Looks for any float type (single or double)
isa(uintVal, 'integer') % TRUE because this tells "isa" functions to test 
                        % for any interger type


isa(singleVal, 'uint8') % false
isa(singleVal, 'uint16') % false
isa(singleVal, 'int32') % false
isa(singleVal, 'double') % false
isa(singleVal, 'char') % false
isa(singleVal, 'integer') % false
isa(singleVal, 'single') % true
isa(singleVal, 'float') % TRUE  % TRUE because it tells "isa" functions to 
                        % test for any floating point type (single or
                        % double)

% Perform similar "isa" tests for intVal, doubleVal, charVal, etc. defined
% above.


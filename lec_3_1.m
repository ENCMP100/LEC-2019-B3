% Lecture 3, part 1: Random numbers and built-in elementary functions
% Chapter 1.4 and 1.8 Attaway


% Random Numbers (Chapter 1.4.5 Attaway)
% ======================================

% Generating a random number between 0 and 1
myRand = rand;  % calling the built-in "rand" function.
myRand

% Using rng built-in function to start the pseudorandom number generator to
% start with a clock-dependent random seed
rng('shuffle')
myRand2 = rand

% Generating a random number between 0 and 10


% Generating a random number between 10 and 20



% getting the state of the random number generator and restoring it later
rngState = rng;

rand % just generating two random numbers
rand

rng(rngState)

rand % generating two more random numbers. Note that these two are the same as the last two random numbers
rand


% Using "randi" to generate a random integer number up to 1000
myIntRand = randi(1000)
myIntRand2 = randi(1000);


% Resetting the integer random number generator to start with a fixed seed
% of 125
rng(125)

% generating two random integers from 0 to 1000
randi(1000)
randi(1000)

% resetting the seed again to 125 and generating two other integer random
% numbers. See that these two are as same as the previous 2 random integers
% because we reset the seed to the same
rng(125)
randi(1000)
randi(1000)


% Built-in elementary functions
% =============================

% Find a list of elementary functions in MATLAB
help elfun


% Find details of a given function, e.g. sin
help sin

% e.g. using sin function
angleInDegrees = 30; 
sin(angleInDegrees * pi / 180) % Note: convert degrees to radians because sin requires argument in radians.
sin(deg2rad(angleInDegrees)) % Using the deg2rad function to convert degrees to radians

% we can also use sind to pass the argument in degrees
sind(angleInDegrees)


% Calculate the angle "theta" in degrees of which the sinusoid is 0.7071



% Logarithmic functions
% %

% Natural logarithm
log(10)


% Base 10 logarithm
log10(10)


% Base 2 logarithm
log2(10)


% Exponents

10^2

3^2

exp(2)  % e^2


% Absolute value of a number
abs(10)
abs(-10)


% Signum function (sign function)
sign(10)
sign(0)
sign(-10)



% Square root of a number
sqrt(16)




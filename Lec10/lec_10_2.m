% Lecture 10 Part 2: Vectorization
% Chapter 5.4

% Vectorization is the process of removing loops in the program code with
% equivalent vector or matrix operations.


%% E.g. 1: Vector sum
clc
clear

vec = rand(100000000,1);

% non-vectorized code
tic
sum1 = 0;
for i = 1:length(vec)
    sum1 = sum1 + vec(i);
end
toc

% vectorized code
tic
sum2 = sum(vec);
toc

fprintf('Sum1: %f\n', sum1)
fprintf('Sum2: %f\n', sum2)


%% E.g. 2: Counting values that are less than 0.5

vec = rand(10,1);

% non-vectorized code
count1 = 0;
for i = 1:length(vec)
    if vec(i) < 0.5
        count1 = count1 + 1; 
    end
end

% vectorized code
count2 = sum(vec<0.5);
return

%% E.g. 3: Counting values that are in between 0.5 and 0.75, inclusive

vec = rand(50,1);

% non-vectorized code
count2 = 0;
for i = 1:length(vec)
    if vec(i) >= 0.5 && vec(i) <= 0.75
        count2 = count2 + 1; 
    end
end

% vectorized code
count2_2 = sum(vec >= 0.5 & vec <= 0.75)


%% E.g. 4: Setting all negative elements to zero
mat = randi([-4 4], 5);

% non-vectorized code
[rows,cols] = size(mat);
for i = 1:rows
    for j = 1:cols
        if mat(i,j) < 0
            mat(i,j) = 0;
        end
    end
end

% vectorized code
mat(mat<0) = 0



%% E.g. 5: Sum of products

itemPrizes = [12.99 5.67 4.20 45.00 59.99 15.00 4.99];
itemCounts = [4 3 56 7 77 8 2];

% non-vectorized code
total = 0;
for i = 1:length(itemCounts)
    total = total + itemPrizes(i) * itemCounts(i);
end

% vectorized code
sum(itemPrizes .* itemCounts)

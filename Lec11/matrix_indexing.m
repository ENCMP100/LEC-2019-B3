% Here are some examples for different methods which can be used to access
% matrix elements


%% Ex. 1: Access the element at 3rd row, 2nd column
% =================================================
mat  = rand(3)

% Method 1: Using row,column numerical indicies
mat(3,2)

% Method 2: Using linear indexing
mat(6)

% Method 3: Using logical indexing (with a mask matrix)
mask = logical([0 0 0; 0 0 0; 0 1 0])
mat(mask)

% Method 4: Using logincal indexing with a linear vector
index = logical([0 0 0 0 0 1 0 0 0])
mat(index)


%% Ex. 2: Find all elements which are greater than 0
% ======================================================
mat  = randn(5)

% Method 1: Using row,column numerical indicies
% This is not possible without knowing row and column indicies of elements
% which satisfy the condition.

% Method 2: Using linear indexing
indicies = find(mat > 0)
mat(indicies) 
% Or, by combining the above two statements:
mat(find(mat > 0))

% Method 3: Using logical indexing (with a mask matrix)
mask = mat > 0
mat(mask)
% Or, by combining the above two statements:
mat(mat > 0)


% Method 4: Using logincal indexing with a linear vector
mask = mat > 0
mat(mask(:)) % NOT much useful because Method 3 is simpler.


%% Ex. 3. Set all values greater than 0.5 to 100
mat  = randn(5)
mat(mat > 0.5) = 100  % Uses logical indexing in the l-value

%% Ex. 4 Set all values that are outside of -0.5 and 0.5 to 0
mat = randn(5)
mat(mat<-0.5 | mat>0.5) = 0 % NOTE: we use element-by-element orand" operator "|" to create the mask


%% Vectorization examples 1: Setting all values between 0.5 and 0.75, inclusive to 100
 
 mat = rand(5);

% non-vectorized code
[rows,cols] = size(mat);
for i = 1:rows
    for j = 1:cols
        if mat(i,j) >= 0.5 && mat(i,j) <= 0.75
            mat(i,j) = 100;
        end
    end
end

% vectorized code
mat(mat>=0.5 & mat<=0.75) = 100;

%% Vectorization examples 2: Counting te number of positive elements

mat = randn(10);

% non-vectorized code
[rows,cols] = size(mat);
count = 0;
for i = 1:rows
    for j = 1:cols
        if mat(i,j) > 0
            count = count + 1;
        end
    end
end

% vectorized code
count1 = sum(sum(mat>0))
count2 = sum(mat(:)>0)
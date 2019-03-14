%
% This script describes the basic usage of data structures.
%
% Reference: Attaway - Chapter 8.2


clear
clc


% Creating a data structure using struct function
account = struct('owner', 'John Carter', ...
                 'accNum', '01-432-454-5342', ...
                 'phone', '780-123-4567', ...
                 'pin', uint8(125), ...
                 'altPhone', '780-888-4444', ...
                 'balance', 724.50);
disp(account)                 
                 
deposit = input('Enter deposit amount: ');

account.balance = account.balance + deposit;

fprintf('%s''s account balance = $%.2f\n', account.owner, account.balance)


% Adding a new field called "address" to the account using the "dot"
% operator
account.address = '9934 Jasper Avenue, Edmonton, AB';
disp(account)                 


% Functions related to structures
% ===============================

% Checking whether a variable is a structure
isstruct(account)

% Checking whether a structure contains a give field
isfield(account, 'balance')  % returns true since balance is a field of the account
isfield(account, 'city') % returns false since city is not a field of the account

% Deleting a field from the structure
account = rmfield(account, 'altPhone');
disp(account);

% getting all field names of a structure. This returns a cell array.
accFields = fieldnames(account);


% Arrays of structures
% ====================

% Pre-allocating a 3-element vector of structures and then filling the rest
% of the array.
products(3) = struct('productType', 'Laptop', 'make', 'Dell', 'model', 'Latitude 5490');
products(2) = struct('productType', 'Camera', 'make', 'Canon', 'model', 'Rebel T3');
products(1) = struct('productType', 'Phone', 'make', 'Apple', 'model', 'iPhone 8');

disp(products)

fprintf('%-15s %-15s %-15s\n', 'Type', 'Make', 'Model')
for i = 1 : numel(products)
    fprintf('%-15s %-15s %-15s\n', products(i).productType, products(i).make, products(i).model)
end


% We can also pre-allocate an array of structures by only specifying field
% names with empty values
classList(50) = struct('name', [], 'year', [], 'gpa', []);

disp(classList)

disp(classList(1))


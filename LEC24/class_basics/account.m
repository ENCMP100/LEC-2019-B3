%
% ACCOUNTV: Definition of an account handle class.
%

classdef account < handle
    properties
        Owner
        Balance
    end
    methods
        
        % Constructor method, which is called when instantiating an
        % object of this class
        function obj = account(ownerName)
            obj.Owner = ownerName;
            obj.Balance = 0;
        end
        
        % deposit method
        function deposit(obj, amount)
           obj.Balance = obj.Balance + amount;
        end
        
        % withdraw method
        function withdraw(obj, amount)
            obj.Balance = obj.Balance - amount;
        end
        
        function print(obj)
            fprintf("Owner: %s\nBalance: %.2f\n\n", obj.Owner, obj.Balance);
        end
    end
    
    
end
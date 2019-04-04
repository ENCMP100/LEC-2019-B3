%
% ACCOUNTV: Definition of an account value class.
%

classdef accountv
    properties
        Owner
        Balance
    end
    methods
        
        % Constructor method, which is called when instantiating an
        % object of this class
        function obj = accountv(ownerName)
            obj.Owner = ownerName;
            obj.Balance = 0;
        end
        
        % deposit method
        function y = deposit(obj, amount)
            y = obj;
            y.Balance = obj.Balance + amount;
        end
        
        % withdraw method
        function obj = withdraw(obj, amount)
            obj.Balance = obj.Balance - amount;
        end
        
        function print(obj)
            fprintf("Owner: %s\nBalance: %.2f\n\n", obj.Owner, obj.Balance);
        end
    end
    
    
end
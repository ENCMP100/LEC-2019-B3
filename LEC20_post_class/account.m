classdef account
   properties
       Owner
       Balance
   end
   methods
       % Constructor
       function obj = account(ownerName)
           obj.Owner = ownerName;
           obj.Balance = 0;
       end
       
      function printBalance(obj)
          fprintf('Balance: %.2f\n', obj.Balance)
      end
      
      function obj = deposit(obj, amount)
          obj.Balance = obj.Balance + amount;
      end
      
      function obj = withdraw(obj, amount)
          if obj.Balance < amount
              error('Insufficient Balance');
          end
          obj.Balance = obj.Balance - amount;
      end  
      
   end
end
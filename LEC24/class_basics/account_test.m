% A test script for accounts

clear
clc

% Value class object instantiation and manipulation
acc1 = accountv('John Carter');
acc1 = acc1.deposit(200);
acc1 = acc1.withdraw(25);
acc1.print

acc2 = accountv('Rose Smith');
acc2 = acc2.deposit(250);
acc2 = acc2.withdraw(25);
acc2.print


% Handle class object instantiating and manipulation
acc3 = account('Steve Zhang');
acc3.deposit(500);
acc3.withdraw(50);
acc3.print
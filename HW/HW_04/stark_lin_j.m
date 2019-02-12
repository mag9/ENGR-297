clc
clear
disp('Name and Date:         Jeremy Stark 02/13/2019');
disp('Course and Section:    ENGR297 and class # 22749');
disp('Problem:               Matlab Homework 4');
disp('Statement:             Solving linear equations input by the user');
disp(' ');

lastname = input('Enter your last name: ', 's');
disp('Please enter the following equations in vector or matrix notation');
equation_1 = input('Enter the first equation: ');
equation_2 = input('Enter the second equation: ');
equation_3 = input('Enter the third equation: ');
equation_4 = input('Enter the fourth equation: ');

A = [equation_1; equation_2; equation_3; equation_4];
B = A(:,end);
A(:,end)= [];

syms x y z w;
solution = linsolve(A,B);

disp('Solution: ');
fprintf('x = %.2f \n', solution(1,1));
fprintf('y = %.2f \n', solution(2,1));
fprintf('z = %.2f \n', solution(3,1));
fprintf('w = %.2f \n', solution(4,1));
clc
clear
disp('Name and Date:         Jeremy Stark 01/30/2019');
disp('Course and Section:    ENGR297 and class # 22749');
disp('Problem:               Matlab Homework 3');
disp('Statement:             Using matlab to work with matrices');
disp(' ');

jeremy = [5 2 4; 1 7 -3; 6 -10 0];
joseph = [11 5 -3; 0 -12 4; 2 6 1];
stark = [7 14 1; 10 3 -2; 8 -5 9];
disp('Chapter 3 problem 14');
disp('a)');
disp('jeremy + joseph');
disp(jeremy+joseph);

disp('joseph + jeremy');
disp(joseph+jeremy);

disp('b)');
disp('jeremy + (joseph + stark)');
disp(jeremy + (joseph + stark));

disp('(jeremy + joseph) + stark');
disp((jeremy + joseph) + stark);

disp('c)');
disp('5*(jeremy + stark)');
disp(5*(jeremy + stark));

disp('5*jeremy + 5*stark');
disp(5*jeremy + 5*stark);

disp('d)');
disp('jeremy*(joseph + stark)');
disp(jeremy*(joseph + stark));

disp('jeremy*joseph + jeremy*stark');
disp(jeremy*joseph + jeremy*stark);
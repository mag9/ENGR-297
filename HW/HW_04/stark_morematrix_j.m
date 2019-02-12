clc
clear
disp('Name and Date:         Jeremy Stark 02/13/2019');
disp('Course and Section:    ENGR297 and class # 22749');
disp('Problem:               Matlab Homework 4');
disp('Statement:             Using user input to generate a matrix');
disp(' ');

lastname = input('Enter your last name: ', 's');

row1start = input('Enter starting value for row1: ');
row1end = input('Enter ending value for row1: ');
row1inc = input('Enter increment value for row1: ');

row2start = input('Enter starting value for row2: ');
row2end = input('Enter ending value for row2: ');
row2inc = input('Enter increment value for row2: ');

row3start = input('Enter starting value for row3: ');
row3end = input('Enter ending value for row3: ');
row3inc = input('Enter increment value for row3: ');

row1 = row1start:row1inc:row1end;
row2 = row2start:row2inc:row2end;
row3 = row3start:row3inc:row3end;

B = [row1; row2; row3;];
disp('The Matrix is: ');
disp(B);
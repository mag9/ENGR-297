clc
clear
disp('Name and Date:         Jeremy Stark 02/13/2019');
disp('Course and Section:    ENGR297 and class # 22749');
disp('Problem:               Matlab Homework 4');
disp('Statement:             Using user input to work with matrices');
disp(' ');

firstname = input('Enter your first name: ', 's');
forcedata = input('Enter force data as a vector: ');
springc = input('Enter spring constant data as a vector: ');

compression = forcedata ./ springc;
energy = 0.5 .* springc .* (compression.^2);
expdata = forcedata .* springc;

disp('Spring Program Results:')

disp('The Compression in the Spring as a Vector is:');
disp(compression);

disp('The Potential Energy Stored in the Spring as a Vector is : ');
disp(energy);

disp('The Experimental Output of Force and the Spring Constant is: ');
disp(expdata);

lastname = input('Enter your last name: ', 's');

disp('The defintion of Pseudocode is:');
disp('Code-like wording that is used to plan out or make sense of actual code');
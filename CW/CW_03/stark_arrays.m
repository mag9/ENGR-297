clc
clear
disp('Name and Date:         Jeremy Stark 01/23/2019');
disp('Course and Section:    ENGR297 and class # 22749');
disp('Problem:               Matlab Classwork 3');
disp('Statement:             Working with matrices, arrays, and vectors.');
disp(' ');

square_matrix = [20 -10 55 71; -99 30 67 14; 85 -11 40 -29; -58 76 32 91;]

out1 = square_matrix(2,:)
out2 = square_matrix(3:4,2:3)
out3 = square_matrix(1:2:3,:)
out4 = size(square_matrix)
out5 = [square_matrix(4,:),square_matrix(2,:)]
out6 = size(out5)
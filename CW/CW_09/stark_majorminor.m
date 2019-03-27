clc
clear
fprintf('Name and Date:         Jeremy Stark 03/27/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Classwork 9b\n');
fprintf('Statement:             While loops\n\n');

fprintf('The while loop is used in cases where the looping process must\n');
fprintf('terminate when a specified condition is satisfied and the\n');
fprintf('quantity of passes in not known in advance\n');

xvalue = 5.0;

increment = 0.0;

while xvalue < 35;
    
    increment = increment + 1;
    
    yvalue(increment) = 3 * xvalue;
    
    xvalue = 2 * xvalue - 1;
end
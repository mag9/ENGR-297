clc
clear
fprintf('Name and Date:         Jeremy Stark 03/27/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Classwork 9\n');
fprintf('Statement:             For-while loops\n\n');

pi = 3.14159;

running = 'y';

running = input('Check for series convergence y or n\n', 's');

while running = = 'y'

    term_amount = input('Enter "m" the number series term -->  ');

    summation = 0;
    
    for n = 0:term_amount
        summation = summation + (-1)^(n) * (1/(2*n+1));
    end
    
    percent_error = (abs(summation - (pi/4)) / (pi/4)) * 100;
    
    fprintf('Results\n');

    fprintf('The value of m used = %d\n', term_amount);
    fprintf('The result of the series summation = %0.5f\n', summation);
    fprintf('the %% error between the series value & the convergent value is %0.2f%%\n', percent_error);
    
    if(percent_error > 0.1)
        fprintf('Your %% error is too high try for results within 0.1%%.\n');
    else
        fprintf('Your Results are within 0.1%%. Good estimating.\n');
    end
    
    running = input('Check for series convergence y or n\n', 's');

end


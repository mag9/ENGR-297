clc
clear
fprintf('Name and Date:         Jeremy Stark 04/24/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Classwork 12\n');
fprintf('Statement:             Banking\n\n');

makeMoney = 'y';

while makeMoney == 'y' | makeMoney == 'Y'
    makeMoney = input('Do you want to make some money?  y or n to quit\n', 's');
    
    if makeMoney == 'n' | makeMoney == 'N'
        return;
    end
    
    initial = input('What is the initial investment?\n: $');

    if initial < 500
        fprintf('I am sorry that you did not put the minimum amount in your account.\n');
        fprintf('You are losing more money than you think.\n');
    end
    
    if initial >= 500
        goal = input('What is your goal for this investment?\n: $');
        rate = input('What is the %% rate promised by the advisor?\n: %');
        annual = input('How much will you add each year to your investment?\n: $');
        
        finalAmount = 0;
        finalAmountAlt = initial + annual;
        finalYears = 1;
        
        while finalAmount <= goal
            finalAmountAlt = finalAmountAlt + (annual * (0.01*rate) * finalYears);
            finalYears = finalYears + 1;
            finalAmount = finalAmountAlt;
        end
        
        fprintf('The final amount with 2 decimal places = $%0.2f.\n', finalAmount);
        fprintf('The final quantity in full years = %i years.\n', finalYears);
    end
end
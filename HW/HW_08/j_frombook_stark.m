clc
clear
fprintf('Name and Date:         Jeremy Stark 03/27/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Homework 8\n');
fprintf('Statement:             Loops, Switch Statements, and Conditional Logic.\n');
fprintf('\n')

car_amount = input('How Many cars do you want to rent?: ');

car_counter = 0;

while car_counter < car_amount

car_class = input('Enter the class of car to be rented (B C D): ', 's');

rental_period = input('Enter the rental period in days: ');

give_cost = 1;

switch car_class
    case {'B','b'}
        if rental_period >= 1 & rental_period <= 6
            rental_cost = 27;
            day_cost = 0;
        elseif rental_period >= 7 & rental_period <= 27
            rental_cost = 162;
            day_cost = 25;
        elseif rental_period >= 28 & rental_period <= 60
            rental_cost = 662;
            day_cost = 23;
        elseif rental_period > 60
            fprintf('Rental is not available for more than 60 days\n\n');
            give_cost = 0;
        else 
            fprintf('Invalid day entered\n');
            give_cost = 0;
        end
    case {'C', 'c'}
        if rental_period >= 1 & rental_period <= 6
            rental_cost = 34;
            day_cost = 0;
        elseif rental_period >= 7 & rental_period <= 27
            rental_cost = 204;
            day_cost = 31;
        elseif rental_period >= 28 & rental_period <= 60
            rental_cost = 284;
            day_cost = 28;
        elseif rental_period > 60
            fprintf('Rental is not available for more than 60 days\n\n');
            give_cost = 0;
        else 
            fprintf('Invalid day entered\n');
            give_cost = 0;
        end
    case {'D', 'd'}
        if rental_period >= 1 & rental_period <= 6
            fprintf('Class D cars cannot be rented less than 7 days.\n\n');
            give_cost = 0;
        elseif rental_period >= 7 & rental_period <= 27
            rental_cost = 204;
            day_cost = 31;
        elseif rental_period >= 28 & rental_period <= 60
            rental_cost = 1136;
            day_cost = 38;
        elseif rental_period > 60
            fprintf('Rental is not available for more than 60 days\n\n');
            give_cost = 0;
        else 
            fprintf('Invalid day entered\n');
        end
    otherwise
        fprintf('Incorrect car class entered.\n')
        give_cost = 0;
end

if give_cost == 1
   fprintf('Cost of renting: $%0.2f for 7 days, +$%0.2f for each additional day.\n\n', rental_cost, day_cost); 
end        

car_counter = car_counter + 1;

end
clc
clear
fprintf('Name and Date:         Jeremy Stark 04/17/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Homework - 11\n');
fprintf('Statement:             Key information\n\n');

testNum = input('How many people will be checked?: ');

if testNum <= 0
    fprintf('The program ended\n');
    return;
end

checked = 0;

while checked < testNum
name = input('Enter your name: ', 's');
feet = input('Input the part A of height: the amount of feet: ');
inches = input('Input the part B of height: the amount of inches: ');
weight = input('Input the weight in pounds: ');

fprintf('Person #%d\tHeight\tWeight\n', checked+1);
fprintf('\t-----------------------\n');

totalHeight = inches + (feet*12);

[SI_height, SI_weight] = STtoSI_stark(totalHeight, weight);

fprintf('Using SI Units: %0.1fcm %0.1fkg \n\n', SI_height, SI_weight);

checked = checked + 1;
end


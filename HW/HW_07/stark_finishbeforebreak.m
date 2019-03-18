clc
clear
fprintf('Name and Date:         Jeremy Stark 03/20/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Homework 7\n');
fprintf('Statement:             Math MAC problem.\n');
fprintf('\n');

last_name = input('Enter your last name: ', 's');
current_major = input('Enter your current major: ', 's');
attendance = input('How many times did you go to the MAC last week?: ');

if (attendance < 3)
    fprintf('Consider going to the MAC. \n');
    elseif (attendance >= 3 & attendance <= 14)
        fprintf('Keep up the good work! \n');  
    elseif(attendance > 14)
        fprintf('You are going a lot! \n');
end

fprintf('\n');

radius = input('Enter the radius of the sphere in centimeters: ');
operation = input('Enter V to calculate volume or S to calculate surface area: ', 's');

if(operation == 's')
    surface_area = 4 * pi * (radius^2);

elseif(operation == 'v')
        volume = (4/3) * pi * (radius^3); 
end

diameter = 2 * radius;
area = pi * (radius^2);

fprintf('<<<<<Results>>>>>\n');
fprintf('The circular diameter is: %f\n', diameter);
fprintf('The circular area is: %f\n', area);

if(operation == 's')
    fprintf('The surface area is: %f square centimeters\n', surface_area);
elseif(operation == 'v')
    fprintf('The volume is: %f cubic centimeters\n', volume);
else
    fprintf('You have entered an incorrect character. \n');
end

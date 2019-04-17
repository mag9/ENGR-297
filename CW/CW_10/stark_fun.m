clc
clear
fprintf('Name and Date:         Jeremy Stark 04/10/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Classwork 10\n');
fprintf('Statement:             Functions\n\n');

fprintf('\nWhat is the circular cross sectional area \n of the base of your geometric dome?\n');
area1 = input('>>');

fprintf('We will use the area of the circle to \ncalculate the needed radius for the function.\n');
radius = sqrt(area1/pi);

fprintf('The radius for our shelter space is % 7.3f feet\n', radius);

volume = stark_sphere(15);

fprintf('The sphere volume = %7.2f & will create two geometric domes.\n', volume);

surface_area = stark_surface(15);

fprintf('The sphere surface area of the two domes will equal %7.3f feet squared.\n', surface_area);
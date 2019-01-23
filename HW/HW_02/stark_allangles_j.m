clc
clear
disp('Name and Date:         Jeremy Stark 01/23/2019');
disp('Course and Section:    ENGR297 and class # 22749');
disp('Problem:               Matlab Homework 2');
disp('Statement:             Using matlab to calculate trigonometric values');
disp(' ');

%Problem 4%
disp('Problem 4a');
value4a = cos((5*pi)/(6)).^2 * sin((7*pi)/(8)).^2 + ((tan((pi/6)*log(8)))/(sqrt(7)));
disp(value4a);

disp('Problem 4b');
value4b = cos((5*pi)/(6)).^2 * sin((7*pi)/(8)).^2 + (tan( (pi*log(8))/(6) ) / (7*(5/2)));
disp(value4b);

%Problem 14%
disp('Problem 14a');
a = 21; b = 45; c = 60;
disp('angle gamma:');
angle_gamma = acosd( ( (a.^2)+(b.^2)-(c.^2) )/(2*a*b) );
disp(angle_gamma);

disp('Problem 14b');
disp('angle alpha:');
angle_alpha = acosd( ( (b.^2)+(c.^2)-(a.^2) )/(2*b*c) );
disp(angle_alpha);

disp('Problem 14b');
disp('angle beta:');
angle_beta = acosd( ( (a.^2)+(c.^2)-(b.^2) )/(2*a*c) );
disp(angle_beta);

disp('Problem 14c');
disp('angle_alpha + angle_beta + angle_gamma = ');
final_angle = angle_alpha + angle_beta + angle_gamma;
disp(final_angle);
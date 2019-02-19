clc
clear
fprintf('Name and Date:         Jeremy Stark 02/20/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Homework 5\n');
fprintf('Statement:             Homework 05\n\n');

gravity = 9.81;

fprintf('Calculate the time for a ball to fall from a building from a given height.\n');
max_height = input('Enter the height of the building in meters: ');
fprintf('\n');

fprintf('Height\t\tTime\t\t Velocity\n');
fprintf('(meters)\t(seconds)\t (m/s)\n');

for height = 100:-15:0
    distance = 100 - height;
    time = sqrt((2*distance)/gravity);
    velocity = time * distance;
    fprintf('%0.2f\t\t%0.5f\t\t %0.4e\n', height, time, velocity);
end
clc
clear
fprintf('Name and Date:         Jeremy Stark 02/13/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Classwork 5\n');
fprintf('Statement:             Classwork 05\n\n');

fprintf('The value of pi is 3.14159265\n');
fprintf('2*pi is expressed as %.2f\n', 2*3.14159265)
fprintf('pi in short format is %0.4f\n', 3.14159265)

frequency1 = [160 92 55 8];
percentage1 = [38 22 13 2];
table1 = [frequency1;percentage1];
fprintf('variable 1 data goes here and \n variable 2 data goes here\n');
fprintf('=====================\n');
fprintf('%4.0f              %3.0f\n', table1);
fprintf('How does this output look?\n\n');

temperature = [36.7 40.1 46.2];
pressure = [27.23 27.59 27.85];
number = [1 2 3];
table2 = [number; temperature; pressure];
fprintf('\tJeremy Stark\t\n');
fprintf('=================================\n');
fprintf('Number\tTemperature\tPressure\n');
fprintf('\t(degrees C)\t(psi)\n');
fprintf('=================================\n');
fprintf('%.0f\t %.1f\t\t%.1e\n', table2);
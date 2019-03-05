clc
clear
fprintf('Name and Date:         Jeremy Stark 03/06/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Homework 6 Problem 1\n');
fprintf('Statement:             Producing a graph from matrix data.\n');
fprintf('\n');

days = 1:31;
axes = gca;

TNY = [31 26 30 33 33 39 41 41 34 33 45 42 36 39 37 45 43 36 41 37 32 32 35 42 38 33 40 37 36 51 50];

TANC = [37 24 28 25 21 28 46 37 36 20 24 31 34 40 43 36 34 41 42 35 38 36 35 33 42 42 37 26 20 25 31];

ny = plot(days, TNY,'bo-');

grid on
axes.GridLineStyle = ':';

hold on
plot(days, TANC, 'rs-');
hold off

title('Stark - Temperatures in New York & Achorage');
xlabel('The Month of January (Days)');
ylabel('Temperature (Degrees Fahrenheight)');

legend('New York', 'Anchorage');

text(5, 50, 'Jeremy Stark', 'fontsize', 25, 'fontname', 'Times New Roman');

clc
clear
fprintf('Name and Date:         Jeremy Stark 03/06/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Homework 6 Problem 2\n');
fprintf('Statement:             Producing graphs of shapes with different properties.\n');
fprintf('\n');

x_square = [-3 3 3 -3 -3];
y_square = [-3 -3 3 3 -3];

x_circle = 3*cos([0:10:360]*pi/180);
y_circle = 3*sin([0:10:360]*pi/180);

x_triangle = 3*cos ([90 210 330 90]*pi/180);
y_triangle = 3*sin ([90 210 330 90]*pi/180);

% Circle Plot %
subplot(2, 2, 1);
title('Circle');
xlabel('x-circle');
ylabel('y-circle');
xlim([-5 5]);
ylim([-4 4]);
hold on
fill(x_circle, y_circle, [0.8 0.8 0.8], 'EdgeColor', 'none');
plot(x_circle, y_circle, 'k--', 'linewidth', 4);
hold off

% Square Plot %
subplot(2, 2, 2);
title('Square');
xlabel('x-square');
ylabel('y-square');
xlim([-5 5]);
ylim([-4 4]);
hold on
fill(x_square, y_square, [0.8 0.8 0.8], 'EdgeColor', 'none');
plot(x_square, y_square, 'k', 'linewidth', 4);
hold off

% Triangle Plot %
subplot(2, 2, 3);
title('Triangle');
xlabel('x-triangle');
ylabel('y-triangle');
xlim([-5 5]);
ylim([-4 4]);
hold on
fill(x_triangle, y_triangle, [0.8 0.8 0.8], 'EdgeColor', 'none');
plot(x_triangle, y_triangle, 'k:', 'linewidth', 4);
hold off

% Combination Plot %
subplot(2, 2, 4);
title('Combination Plot');
xlabel('x-data');
ylabel('y-data');
xlim([-5 5]);
ylim([-4 4]);
hold on
fill(x_square, y_square, [0.8 0.8 0.8], 'EdgeColor', 'none');
plot(x_circle, y_circle, 'k--', 'linewidth', 4);
plot(x_square, y_square, 'k', 'linewidth', 4);
plot(x_triangle, y_triangle, 'k:', 'linewidth', 4);
hold off

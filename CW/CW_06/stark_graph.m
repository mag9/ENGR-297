clc
clear
fprintf('Name and Date:         Jeremy Stark 02/27/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Classwork 6\n');
fprintf('Statement:             Plotting graphs in matlab\n\n');

figure
x=(10:0.1:22);
y=95000./x.^2;
xd=(10:2:22);
yd=[950 640 460 340 250 180 140];
plot(x,y,':','LineWidth', 3);
xlabel('Distance (cm)');
ylabel('Intensity (lux)');
title('\fontname{Arial}Light Intensity as a Function of Distance','FontSize', 14);
axis([8 24 0 1200])
text(14, 700, 'Comparison between theory and experiment.', 'EdgeColor', 'r', 'LineWidth', 2);
grid
hold on 
plot(xd,yd,'rx--','linewidth',1.5,'markersize',10)
legend('Theory','Experiment')
% gtext('Jeremy Stark')
hold off

figure 
fplot('x^2+4*sin(2*x)-1', [0,3])

figure
subplot(3,1,1)
fplot('x^2+4*sin(2*x)-1', [0,3])
subplot(3,1,2)
fplot('x*cos(x)',[0,10])
subplot(3,1,3)
loglog(0,0.1)
hold on 
fplot('x^2', [-5,5])
hold off

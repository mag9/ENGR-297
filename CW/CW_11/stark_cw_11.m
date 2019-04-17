clc
clear
fprintf('Name and Date:         Jeremy Stark 04/17/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Classwork 11\n');
fprintf('Statement:             Turboprop Engine\n\n');

startTime = input('Enter start time: ');
endTime = input('Enter end time: ');
intervalStart = input('Enter start of interval to plot: ');
intervalEnd = input('Enter end of internval to plot: ');

while (intervalEnd - intervalStart) > 120 
    fprintf('Invalid interval; Enter new Values.\n\n');
    intervalStart = input('Enter start of interval to plot: ');
    intervalEnd = input('Enter end of internval to plot: ');
end

row = 1;
for time = startTime:endTime
[dataPoint(row, 1), dataPoint(row, 2), dataPoint(row, 3)] = stark_data(time);
    
row = row + 1;
end

%%dataTable = array2table(dataPoint, 'VariableNames',{'Time','Velocity','Acceleration'})

fprintf('\nTime\tVelocity\tAcceleration\n');
fprintf('%0.0f\t%0.1f\t\t%0.3f\n', [dataPoint(:, 1), dataPoint(:, 2), dataPoint(:, 3)]);

subplot(1, 2, 1);
title('Velocity vs Time');
xlabel('Time');
ylabel('Velocity');
xlim([intervalStart intervalEnd]);
hold on
plot(dataPoint(:,1), dataPoint(:,2), '.');
hold off

subplot(1, 2, 2);
title('Acceleration vs Time');
xlabel('Time');
ylabel('Acceleration');
xlim([intervalStart intervalEnd]);
hold on
plot(dataPoint(:,1), dataPoint(:,3), '.');
hold off
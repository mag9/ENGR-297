clc
clear
fprintf('Name and Date:         Jeremy Stark 04/22/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Homework 12\n');
fprintf('Statement:             Temperature Data\n\n');

% Data %
tny = [ 31 26 30 33 33 39 41 41 34 33 45 42 36 39 37 45 43 36 41 37 32 32 35 42 38 33 40 37 36 51 50];
tanc = [ 37 24 28 25 21 28 46 37 36 20 24 31 34 40 43 36 34 41 42 35 38 36 35 33 42 42 37 26 20 25 31];

% Part A %
fprintf('Part A \n');

avgTempNY = mean(tny);
avgTempAN = mean(tanc);

fprintf('The average temperature in New York is %0.2fF.\n', avgTempNY);
fprintf('The average temperature in Anchorage is %0.2fF.\n', avgTempAN);
fprintf('\n');


% Part B %
fprintf('Part B \n');

belowAvgNY = 0;
belowAvgAN = 0;

for i = 1:31
    
    if tny(i) < avgTempNY
        belowAvgNY = belowAvgNY + 1;
    end
end

for i = 1:31
    
    if tanc(i) < avgTempAN
        belowAvgAN = belowAvgAN + 1;
    end
end

fprintf('The number of days with a temperature below the average in New York was %i.\n', belowAvgNY);
fprintf('The number of days with a temperature below the average in Anchorage was %i.\n', belowAvgAN);
fprintf('\n');

% Part C %
fprintf('Part C \n');

greaterAN = 0;

for i = 1:31
    
    if tanc(i) < tny(i)
        greaterAN = greaterAN + 1;
        tempAnGreater(i) = i;
    end
end

angreater = nonzeros(tempAnGreater);

fprintf('Anchorage was warmer these days in January: \n');

for n = 1: (size(angreater)-1)
    fprintf('%i, ', angreater(n));
end

fprintf('%i.\n', angreater(end));
fprintf('A total of %i days.\n', greaterAN);
fprintf('\n');

% Part D %
fprintf('Part D\n');

numSameDaysAn = 0;

for i = 1:31
    
    if tanc(i) == tny(i)
        numSameDaysAn = numSameDaysAn + 1;
        tempANSame(i) = i;
    end
end

ansame = nonzeros(tempANSame);

fprintf('Anchorage was the same temperature as New York these days in January: \n');

for n = 1: (size(ansame)-1)
    fprintf('%i, ', ansame(n));
end

fprintf('%i.\n', ansame(end));
fprintf('A total of %i days.\n', numSameDaysAn);
fprintf('\n');

% Part E %
fprintf('Part E\n');

aboveAN = 0;
aboveNY = 0;

dayAboveAN = zeros(31,1);
dayAboveNY = zeros(31,1);

for i = 1:31
    if tny(i) > 32
        aboveNY = aboveNY + 1;
        dayAboveNY(i) = i;
        
    end
    
    if tanc(i) > 32
        aboveAN = aboveAN + 1;
        dayAboveAN(i) = i;
    end
end

fprintf('New York was above freezing a total of %i times on the following days in January: \n', aboveNY);

for i = 1:31
    if dayAboveNY(i) ~= 0
        fprintf("%i ", dayAboveNY(i));
    end
end
fprintf('\n\n');

fprintf('Anchorage was above freezing a total of %i times on the following days in January: \n', aboveAN);

for i = 1:31
    if dayAboveAN(i) ~= 0
        fprintf("%i ", dayAboveAN(i));
    end
end
fprintf('\n');


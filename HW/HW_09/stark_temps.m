clc
clear
fprintf('Name and Date:         Jeremy Stark 04/03/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Homework - Review\n');
fprintf('Statement:             Key information\n\n');

numChecksF = 0;
numChecksC = 0;
numChecksK = 0;

tempF = 0;
tempC = 0;
tempK = 0;

checkBool = true;

fprintf('This program converts an input temperature to the other scales of temperature.\n');
fprintf('The temperature scales used are: Celsius, Fahrenheit, and Kelvin.\n');

tempCheck = input('Would you like to check a temperature? Y for Yes or N for no: ', 's');

if tempCheck == 'N' | tempCheck == 'n'
        checkBool = false;
end

while checkBool

    tempScale = input('What is your temperature scale? Enter Celsius-C, Kelvin-K, or Fahrenheit-F: ', 's');
    temp = input('Please enter the temperature value: ');
    
    switch tempScale
        case {'F', 'f'}
            tempF = temp;
            tempC = (tempF - 32) / 1.8;
            tempK = (tempF + 459.67) * (5/9);
            
            fprintf('For the input temperature of %0.3f degree Fahrenheit: \n', tempF);
            fprintf('%0.3f degree Fahrenheit is equal to %0.2f degree Celsius.\n', tempF, tempC);
            fprintf('%0.3f degree Fehrenheit is equal to %0.3f degree Kelvin.\n', tempF, tempK);
            
            numChecksF = numChecksF + 1;
        case {'C', 'c'}
            tempC = temp;
            tempF = tempF * 1.8 + 32;
            tempK = tempC + 273.15;
            
            fprintf('For the input temperature of %0.2f degree Celsius: \n', tempC);
            fprintf('%0.2f degree Celsius is equal to %0.3f degree Fahrenheit.\n', tempC, tempF);
            fprintf('%0.2f degree Celsius is equal to %0.3f degree Kelvin.\n', tempC, tempK);
            
            numChecksC = numChecksC + 1;
        case {'K', 'k'}
            tempK = temp;
            tempF = tempK * (9/5) - 459.67;
            tempC = tempK - 273.15;
            
            fprintf('For the input temperature of %0.3f degree Kelvin: \n', tempK);
            fprintf('%0.3f degree Kelvin is equal to %0.2f degree Celsius.\n', tempK, tempC);
            fprintf('%0.3f degree Kelvin is equal to %0.3f degree Fehrenheit.\n', tempK, tempF);
            
            numChecksK = numChecksK + 1;
        otherwise
            fprintf('Error, please enter F, C, or K');
    end
    
    tempCheck = input('Would you like to check a temperature? Y for Yes or N for no: ', 's');

    if tempCheck == 'N' | tempCheck == 'n'
        checkBool = false;
    end

end

fprintf('Thank you for checking:\n');
fprintf('%d Celsius Scales and %d Fahrenheit Scales and %d Kelvin Scales\n', numChecksC, numChecksF, numChecksK);
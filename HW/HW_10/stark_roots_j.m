clc
clear
fprintf('Name and Date:         Jeremy Stark 04/03/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Homework - 10\n');
fprintf('Statement:             Key information\n\n');

lastName = input('Enter your lastname: ', 's');

runProgram = true;

while runProgram
   numEq = input('How many equations do you want to answer? \n');


    if numEq <= 0 
      fprintf('Error, %d is wrong answer. \n', numEq);
    end 
    
    if numEq > 0
        for i = 1:numEq
            fprintf('Please enter the coefficients for Equation #%d\n', i);
            
            varA = input('Enter the value for a: ');
            varB = input('Enter the value for b: ');
            varC = input('Enter the value for c: ');
            
            roots = varB^2 - 4*varA*varC;
            
            if roots > 0
                    fprintf('The equation has two roots.\n');
                    realRootPos = (-varB + sqrt(roots))/(2*varA);
                    realRootNeg = (-varB - sqrt(roots))/(2*varA);
                    
                    fprintf('The real root = %0.3f\n', realRootPos);
                    fprintf('The real root = %0.3f\n', realRootNeg);
            elseif roots == 0
                    fprintf('The equation has one root.\n');
                    realRootPos = (-varB + sqrt(roots))/(2*varA);
                    
                    fprintf('The real root = %0.3f\n', realRootPos);
            elseif roots < 0
                    fprintf('The equation has zero real roots.\n');
            end
            
            if i == numEq
                runProgram = false;
            end
        end
    end
end


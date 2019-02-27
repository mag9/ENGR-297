clc
clear
format shortG
array = [linspace(1, 5, 5); linspace(6,5+5, 5); zeros(1,5); 2:2:10; linspace(2, 11, 5)];

for i = 0:5
    fprintf('%f\n'. array(1, i);
end
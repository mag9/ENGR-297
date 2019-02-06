clc
clear
disp('Name and Date:         Jeremy Stark 01/30/2019');
disp('Course and Section:    ENGR297 and class # 22749');
disp('Problem:               Matlab Homework 3');
disp('Statement:             Using matlab to calculate costs of lab supplies');
disp(' ');

multimeter_stark = 25.87;
wires_jeremy = 13.74;
surge_protector = 12.95;
protoboard_stark = 14.36;

format BANK;

disp('A)');
kit_stark = 2*wires_jeremy + surge_protector + 3*protoboard_stark + multimeter_stark;
disp(kit_stark);

disp('B)');
kittax_jeremy = kit_stark + (.075 * kit_stark);
disp(kittax_jeremy);

disp('C)');
kitround_stark = round(kittax_jeremy);
disp(kitround_stark);
clc;
clear;
disp('Jeremy Stark');
R1=16; R2=6.5; R3=12; R4=9.5;
C1C2=R1+R2; C1C3=R1+R3; C1C4=R1+R4;
C2C3=R2+R3; C3C4=R3+R4;
Gama1=acos((C1C2^2+C1C3^2-C2C3^2)/(2*C1C2*C1C3));
Gama2=acos((C1C3^2+C1C4^2-C3C4^2)/(2*C1C3*C1C4));
Gama3=Gama1+Gama2;

C2C4=sqrt(C1C2^2+C1C4^2-2*C1C2*C1C4*cos(Gama3))

show_me = [0:50:450]
hide_it = [0:10:450];

positions = linspace(0, 2*pi, 1000);
positions = linspace(0, 2*pi, 20)

alpha = [2 7 4 9 7 1 3; 2 7 4 2 9 4 3; 2 7 4 2 5 3 3]
alpha_transpose = alpha'

matrixz = [0 3 1 7; 0 2 3 9; 1 0 7 0; 4 4 4 4]

row_z = matrixz(2, :)
colomn_z = matrixz(2,:)'

out = size(matrixz)
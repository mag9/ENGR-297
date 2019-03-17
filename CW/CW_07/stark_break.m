clc
clear
fprintf('Name and Date:         Jeremy Stark 03/06/2019\n');
fprintf('Course and Section:    ENGR297 and class # 22749\n');
fprintf('Problem:               Matlab Classwork 7\n');
fprintf('Statement:             Conditional operators and logic statements\n\n');

vector_increment = sin([0:0.1282:2*pi]) 
vector_quantity = cos(linspace(0,6.28,50))

new_vector1 = vector_increment >= vector_quantity
fprintf('How many values are true in the relationship \nof the sine term > or = to the cosine term\n') 
new_vector2=vector_increment <= vector_quantity 
fprintf('How many values are true in the relationship \nof the sine term < or = to the cosine term\n') 
fprintf('Please go ahead and count them \n')

output1=find(new_vector1>0)
output2=find(new_vector2>0)

vectx = [ 2 6 4 8 ]
vecty = [ 1 3 9 8 ]

vectnu3 = vectx > vecty
vectnu4 = vectx >= vecty
vectnu5 = vectx == vecty
vectnu6 = vectx ~= vecty
vectnu7 = vecty
result1 = [4 0 7] | [6 0 0]
result2 = [6 -2 0 0 ] & [3 5 0 6]

find(result1)
find(result2)
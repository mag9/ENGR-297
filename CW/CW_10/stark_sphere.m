function [volume, surface_area] = stark_sphere(radius)

% sphere_stark uses the radius to
% find the volume of a sphere
volume = (4/3)*pi*radius^3;

surface_area = 4 * pi * radius^2;
end
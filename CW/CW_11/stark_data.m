%stark_data calculates velocity and acceleration based on input time.
function [time, velocity, acceleration] = stark_data(time)

velocity = (0.00001 * time^3) - (0.00488*time^2) + (0.75795 * time) + 181.3566;

acceleration = 23 - (0.000062) * velocity^2;

end
clc
clear
close all
format long g

%display name and assignment details
disp('Zyad Khan - MATLAB Chapter 8 Assignment')

%Problem 1 - Graphing
syms x

f(x) = log(sin (x)); % set the variable f(x) to equal ln(sin x)
g(x) = log(cos (x)); % set the variable g(x) to equal ln(cos x)

% Graph both f(x) and g(x) on the interval [-pi, pi]
fplot(f(x), [-pi,pi])
grid on; hold on;
fplot(g(x), [-pi,pi])
title('Graph of Natural Log of Sine and Cosine')
xlabel('x')
ylabel('y')
legend('ln (sin x)','ln (cos x)')

%Problem 2 - Improper Integral

Definite_Integral_of_f(x) = int(f(x),x,0,(pi/2)); % solve the definite integral of the improper integral ln(sin x)dx from [0, pi/2]
Definite_Integral_of_g(x) = int(g(x),x,0,(pi/2)); % solve the definite integral of the improper integral ln(cos x)dx from [0, pi/2]

 
if isfinite(Definite_Integral_of_f(x)) 
    fprintf('The integral of f(x)= ln(sin x) converges and the limit is %.3f.\n', Definite_Integral_of_f(x)) 
else 
    fprintf('The integral diverges.') % if the improper integral is not a definite value, it is then determined as diverging. 
end  
 
if isfinite(Definite_Integral_of_g(x)) 
    fprintf('The integral of g(x)= ln(cos x) converges and the limit is %.3f.\n', Definite_Integral_of_g(x)) 
else 
    fprintf('The integral diverges.') % if the improper integral is not a definite value, it is then determined as diverging. 
end 
 

%Problem 3 - Arc Length of the Curve
f_prime = diff(f(x)); % take the derivative of f(x) = ln(sin(x))
arc_length_formula = sqrt(1+(f_prime)^2); % the formula of arc length is the square root of 1+ fprime^2
arc_length = int(arc_length_formula,x,(pi/4),(pi/2)); % solve the integral of the arc length formula with accordance to the correct interval
fprintf('The arc length of the curve f(x)= ln(sin x) is %.3f.\n' ,arc_length)

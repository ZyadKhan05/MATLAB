clc
clear
close all
format long g

%display name and assignment details
disp('Zyad Khan - MATLAB Chapter 7 Assignment')

% part a 
% Find the model for population
syms t; % t is representing the time (number of days)
population_rate_of_change= -105*exp(-t/30);
population_model = int(population_rate_of_change);

syms c % set c for the constant variable 'C' 
population_model_with_c = population_model + c; % create the integral with the constant C
initial_value = 3150 ; % initial population of fish
t = 0; % initial value is 0 days
sub_t_in_pop_model = subs(population_model_with_c, t); % substitute the initial value for time into the population model with C in order to solve for C
const_value = solve(sub_t_in_pop_model == initial_value, c); %solve the population model for c at the initial values
population_model_with_c = population_model + const_value ; % solve for the population model with the actual value of C using the initial data
disp(["The model for the population of the fish in the lake is P(t)= " + char(population_model_with_c)]);



% part b 
% Find the population of fish after 11 days.
pop_after_11_days = subs(population_model_with_c, 11);
pop_after_11_days_approx = double(pop_after_11_days);
fprintf('The population of trout fish in the lake after 11 days is %.0f fish.\n', pop_after_11_days_approx)

% part c
% Find how many days it will take for the entire trout population to die
% (less than one)
days_till_pop_is_zero = solve(population_model_with_c == 0.99);
pop_zero_approx = double(days_till_pop_is_zero);
fprintf('It will take %.1f days for the entire trout population to die. \n', pop_zero_approx)

% part d
% Graph the population model
fplot(population_model_with_c, [0,pop_zero_approx]); 
hold on; grid on
xlabel('t (in days)')
ylabel('Population (fish)')
title('Trout Population in a Lake over Time')
legend('Population of Fish')
disp('The graphical model for the population of fish will open in a new window shortly... ')

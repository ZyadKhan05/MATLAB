% Zyad Khan
% Matlab Unit 2 Assignment
% MATH-210: Linear Algebra

% Display name and assignment details
disp('Zyad Khan - MATLAB Unit 2 Assignment')

% Clear the grid
clf

% Code for the random colors
col_list='rgbcmykw';
col=randi([1,8],1);
color_choice=randi([1,8],1);


% First 2D Shape - Trapezoid
trapezoid = [0 0 0.5 1 ; 0 0.5 0.5 0 ; 1 1 1 1]; 
patch(trapezoid(1,:), trapezoid(2,:), col_list(randi([1,8],1))); 


% Transformation 1: Rotation by pi/6
transformation_1 = [cos(pi/6), -sin(pi/6) 0; sin(pi/6), cos(pi/6), 0 ; 0 0 1];
p_transformation1 = transformation_1* trapezoid;


%For loop to apply the first transformation to the first transformation of
%the trapezoid 20 times to create the pattern
for c = 1:10
    p_transformation1 = transformation_1*p_transformation1;  
    patch(p_transformation1(1,:), p_transformation1(2,:), col_list(randi([1,8],1)))
end 


%Second 2D Shape - Parallelogram
parallelogram = [1 1.2 1.4 1.2  ; 1 1 0 0 ; 1 1 1 1];

% Transformation 5: Shift up 1/8
transformation_5 = [ 1 0 0 ; 0 1 1/8 ; 0 0 1];
p_transformation1 = transformation_5* parallelogram;

patch(parallelogram(1,:), parallelogram(2,:), col_list(randi([1,8],1))); 
axis([-3,3,-3,3])
p_transformation1 = transformation_1*p_transformation1;

%For loop to apply the first transformation to the first transformation of
% the second shape (Parallelogram)
for c = 1:12
    p_transformation1 = transformation_1*p_transformation1;  
    patch(p_transformation1(1,:), p_transformation1(2,:), col_list(randi([1,8],1)))
end 

%Third 2D Shape - Triangle
triangle = [ 3 2 0 ; 0 2 3 ; 1 1 1];


% Transformation 2: Reflection through the line x2 = - x1 
transformation_2 = [0 -1 0 ; -1 0 0 ; 0 0 1];


% Transformation 3: Reflection through x1 axis
transformation_3 = [ 1 0 0 ; 0 -1 0 ; 1 1 1 ];


t_transformation = transformation_3*triangle;

% Tranformation 4: Reflection through x2 axis
transformation_4 = [-1 0 0 ; 0 1 0 ; 0 0 1];

% Transformation 6: Shift down 1/2
transformation_6 =  [ 1 0 0 ; 0 1 -1/2 ; 0 0 1];

% Transformation 7: Shift up 1/2
transformation_7 =  [ 1 0 0 ; 0 1 1/2 ; 0 0 1];

for c = 1:2
    t_transformation = transformation_2*t_transformation;
    patch(t_transformation(1,:), t_transformation(2,:), col_list(randi([1,8],1)))
    t_transformation = transformation_4*t_transformation;
    patch(t_transformation(1,:), t_transformation(2,:), col_list(randi([1,8],1)))
end


set(gca,'color', [0.8 0.8 0.8]);






% Zyad Khan
% Matlab Unit 1 Assignment
% MATH-210: Linear Algebra

% Display name and assignment details
disp('Zyad Khan - MATLAB Unit 1 Assignment')

% Clear the grid
clf

% Code for the random colors
col_list='rgbcmykw';
col=randi([1,8],1);
color_choice=randi([1,8],1);


% First 2D Shape - Trapezoid
trapezoid = [0 0 0.5 1 ; 0 0.5 0.5 0]; 
% Patch the original trapezoid shape
patch(trapezoid(1,1:4), trapezoid(2,1:4), col_list(randi([1,8],1))); 

%Second 2D Shape - Parallelogram
parallelogram = [1 1.2 1.4 1.2  ; 1 1 0 0];
% Patch the original Parallelogram shape
patch(parallelogram(1,:), parallelogram(2,:), col_list(randi([1,8],1))); 
% Set the axis for the graph
axis([-3,3,-3,3])



% Transformation 1: Rotation by pi/6
transformation_1 = [cos(pi/6), -sin(pi/6) ; sin(pi/6), cos(pi/6)];
% Apply the first transformation to the trapezoid 
first_pattern = transformation_1*trapezoid;


%For loop to apply the first transformation to the first transformation of
%the trapezoid 20 times to create the pattern
for c = 1:20
    first_pattern = transformation_1*first_pattern;  
    patch(first_pattern(1,:), first_pattern(2,:), col_list(randi([1,8],1)))
end 

% Transformation 2: Reflection through the line x2 = - x1 
transformation_2 = [0 -1 ; -1 0];
% Apply the second transformation to the original trapezoid shape
second_pattern = transformation_2*trapezoid;

% For loop to apply the second transformation to the transformation of the
% to create the second pattern
for d = 1:3
    second_pattern = transformation_2*second_pattern;
    patch(second_pattern(1,:), second_pattern(2,:), col_list(randi([1,8],1)))
end

% Tranformation 3: Reflection through x2 axis
transformation_3 = [-1 0 ; 0 1];


% Transformation 4: Reflection through x1 axis
transformation_4 = [ 1 0 ; 0 -1];

% Transofmration 5: Horizontal Shear where k > 0
transformation_5 = [1 1 ; 0 1];

% Apply the third transformation to the Parallelogram shape
parallelogram_pattern = transformation_3*parallelogram;
% Patch the transformation
patch(parallelogram_pattern(1,:), parallelogram_pattern(2,:), col_list(randi([1,8],1))); 

% Apply the fourth transformation to the parallelogram shape
parallelogram_pattern = transformation_4 * parallelogram_pattern;
% Patch the transformation
patch(parallelogram_pattern(1,:), parallelogram_pattern(2,:), col_list(randi([1,8],1))); 

% For loop to apply the third and second transformation to the
% transformation pattern of triangle with a reflection through the x2 axis
for e = 1:4
    parallelogram_pattern = transformation_3 * parallelogram_pattern;
    patch(parallelogram_pattern(1,:), parallelogram_pattern(2,:), col_list(randi([1,8],1))); 
    
    parallelogram_pattern = transformation_2 * parallelogram_pattern;
    patch(parallelogram_pattern(1,:), parallelogram_pattern(2,:), col_list(randi([1,8],1)));
    
end
 
% Apply the fifth transformation to the parallelogram shape
parallelogram_pattern = transformation_5 * parallelogram;
% Patch the transformation
patch(parallelogram_pattern(1,:), parallelogram_pattern(2,:), col_list(randi([1,8],1))); 
    
% Apply the third transformation to the parallelogram shape
parallelogram_pattern = transformation_3 * parallelogram_pattern;
% Patch the transformation
patch(parallelogram_pattern(1,:), parallelogram_pattern(2,:), col_list(randi([1,8],1))); 

% Apply the fifth transformation to the parallelogram shape
parallelogram_pattern = transformation_5 * parallelogram;
% Patch the transformation
patch(parallelogram_pattern(1,:), parallelogram_pattern(2,:), col_list(randi([1,8],1))); 
    
% Apply the fourth transformation to the parallelogram shape
parallelogram_pattern = transformation_4 * parallelogram_pattern;
% Patch the transformation
patch(parallelogram_pattern(1,:), parallelogram_pattern(2,:), col_list(randi([1,8],1)));

% Apply the third transformation to the parallelogram shape
parallelogram_pattern = transformation_3 * parallelogram_pattern;
% Patch the transformation
patch(parallelogram_pattern(1,:), parallelogram_pattern(2,:), col_list(randi([1,8],1)));

% Apply the fourth transformation to the parallelogram shape
parallelogram_pattern = transformation_4 * parallelogram_pattern;
% Patch the transformation
patch(parallelogram_pattern(1,:), parallelogram_pattern(2,:), col_list(randi([1,8],1)));
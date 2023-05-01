% Zyad Khan
% Matlab Unit 4 Assignment
% MATH-210: Linear Algebra

% Display name and assignment details
disp('Zyad Khan - MATLAB Unit 4 Assignment')

% Part 1 - Provided Matrix 
A = [0 1 0 0 ; 0 0 1 0 ; 0 0 0 1; -24 -14 13 2];
[Q,R] = qr(A);
check = 1;

% While loop to find the QR factorization of A
while check > 0.00007
    n = n + 1;
    [Q, R] = qr(A);
    A = R* Q;
    check = abs(A(2,1) + A(3,1)+ A(3,2) + A(4,1) + A(4,2) + A(4,3));
end 

% Print results
disp(A);
fprintf("Using the diagonals of matrix after QR factorization, the roots for the equation:\n");
fprintf("p(t) = t^4 - 2t^3 - 13t^2 + 14t+ 24 are t = 4, -3, 2, -1\n\n");

%Part 2 - Create your own polynomial with a degree of 4 or higher
% Polynomial: p(t) = t^5 - 92t^3 + 186t^2 +  955t - 1050
B = [0 1 0 0 0 ; 0 0 1 0 0; 0 0 0 1 0; 0 0 0 0 1; 1050 -955 -186 92 0];
[Q,R] = qr(B);
check = 1;
n = 0;

% While loop to find the QR factorization of Matrix B
while n < 100
    n = 1+ n;
    [Q, R] = qr(B);
    B = R* Q;
end

% Print results
disp(B);
fprintf("Using the diagonals of Matrix B, the roots for the equation:\n");
fprintf("p(t) = 6t^5 - t^4 - 43t^3 - + 43t^2 + t - 6 are t = 1, 5, 7, -3, -10 \n");


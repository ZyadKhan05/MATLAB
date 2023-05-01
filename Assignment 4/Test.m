B = [0 1 0 0 0 ; 0 0 1 0 0; 0 0 0 1 0; 0 0 0 0 1; 6 -1 -43 43 1];
[Q,R] = qr(B);
n = 0;

while n < 1000
    n = n +1;
    [Q, R] = qr(B);
    B = R* Q;
end 
disp("After QR factorization, the A Matrix is: ");
disp(B);
fprintf("Using the diagonals of matrix, the roots for the equation:\n");
fprintf("p(t) = 6t^5 - t^4 - 43t^3 - + 43t^2 + t - 6 are t =  \n");


% Zyad Khan
% Matlab Unit 3 Assignment
% MATH-210: Linear Algebra

% Display name and assignment details
disp('Zyad Khan - MATLAB Unit 3 Assignment')
clc;clear

% Part 1 - Provided Matrix
A = [4 9 15 ; 15 17 6 ; 24 0 17;];

encodedTextMessage = 'hdqmraepigbcmeubxxedigmuyio';
encodedMessage = [7 12 4 6 12 1 4 6 24 ; 3 17 15 1 4 23 3 12 8; 16 0 8 2 20 23 8 20 14 ];

P = round(det(A)*inv(A));
a = (det(A)); 
num = [1:26]; 
res = mod(a*num,26);
b = find(res == 1);


key = mod(b*P,26);

key = [4 9 15 ; 15 17 6; 24 0 17;];

% Find the key matrix from the example
disp("The mod 26 inverse of the A matrix (or the key matrix) is: ")
disp(key)
decodedMessage = key * encodedMessage;
decodedMessage = mod(decodedMessage, 26);

% Print 
fprintf("\nThe encoded message in text is: %s\n", encodedTextMessage)
disp("The encoded message Matrix is: ")
disp(encodedMessage)

fprintf("\nThe decoded message matrix is: \n")
disp(decodedMessage)

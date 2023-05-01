% Zyad Khan
% Matlab Unit 3 Assignment
% MATH-210: Linear Algebra

% Display name and assignment details
disp('Zyad Khan - MATLAB Unit 3 Assignment')

% Part 1 - Provided Matrix
disp("Part 1 - Provided Matrix")
% Using provided A matrix, decode the message: DVIZRTJQXVCWOGUJNKGSDEWMDDY
A = [2 5 3; 12 9 4; 17 22 8];

encodedTextMessage = 'DVIZRTJQXVCWOGUJNKGSDEWMDDY';
encodedMessage = [3 25 9 21 14 9 6 4 3; 21 17 16 2 6 13 18 22 3; 8 19 23 22 20 10 3 12 24];

P = round(det(A)*inv(A));
a = round(det(A)); num = [1:26]; res = mod(a*num,26);
b = find(abs(res-1)<10^-10);

key = mod(b*P,26);

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
fprintf("Translation: Alan Turing Cracked Enigma Code \n")
% This message refers to the person who cracked the German Enigma Code
% during WW2.


% Part 2 - Encode your own message with your own A matrix (mod 26 w/ an inverse)
fprintf("\nPart 2 - Encode your own message with your own A matrix\n")
message = 'Congrats. You solved the code';
messageMatrix = [2 6 19 14 14 4 7 14; 14 17 18 20 11 3 4  3 ; 13 0 24 18 21 19 2 4];

% My A Matrix 
A = [ 10 17 8 ; 3 22 4; 14 11 3];

% Find Key matrix for my A matrix
P = round(det(A)*inv(A));
a = round(det(A)); num = [1:26]; res = mod(a*num,26);
b = find(abs(res-1)<10^-10);
key = mod(b*P,26);

encodedMessage = mod(A * messageMatrix, 26);
decodedMessage = key * encodedMessage;
decodedMessage = mod(decodedMessage, 26);

% Output
disp("The mod 26 inverse of the A martrix (or the key matrix) is: ")
disp(key)

disp("The encoded message matrix is: ");
disp(encodedMessage)
encodedMessageText = 'ycnlclmdqaicbeqjyqynspuh';
disp("The encoded message matrix in text is:" + encodedMessageText)

disp("The decoded message using this message is (which is the same as the message in matrix form): ");
disp(decodedMessage)
disp("Translation: Congrats you solved the code")

% Part 3 - In Class Decoding from Gavin Dalton

fprintf("\nPart 3 - In Class Decoding from Gavin Dalton")
% Using the classmate's A matrix, decode the message: 
A = [23 8 1 ; 15 1 7; 12 17 7];

encodedTextMessage = 'DILNMNIROEOCDMRCAQVPUZKBFWM';
encodedMessage = [3 13 8 4 3 2 21 25 5; 8 11 17 14 12 0 15 10 22; 11 13 14 2 17 16 20 1 12];

P = round(det(A)*inv(A));
a = round(det(A)); num = [1:26]; res = mod(a*num,26);
b = find(abs(res-1)<10^-10);

key = mod(b*P,26);

% Find the key matrix from a classmate
fprintf("The mod 26 inverse of the A matrix (or the key matrix) from a classmate is: ")
disp(key)
decodedMessage = key * encodedMessage;
decodedMessage = mod(decodedMessage, 26);

% Print results
fprintf("\nThe encoded message from a classmate in text is: %s\n", encodedTextMessage)
disp("The encoded message Matrix from a classmate is: ")
disp(encodedMessage)

fprintf("\nThe decoded message matrix from a classmate is: \n")
disp(decodedMessage)
fprintf("The decoded message in text from a classmate is: The Night(njght) Hawk Flies at Midnight\n")

clc
clear
close all
format long g

%display name and assignment details
disp('Zyad Khan - MATLAB Chapter 10 Assignment')

%Problem 1 - Sequence
syms k
f(k)=(1)/((k)*(k+1));
sequence = eval(subs(f(k),k,1:25));
convergence = limit(f(k),k,inf);

%Graph the Sequence 
plot(sequence , 'o');
grid on; hold on;
title('Graph of the Sequence')
legend('Sequence')
xlabel('x')
ylabel('y')


%Determine Convergence or Divergence
if isfinite(convergence) 
    disp(['The sequence ' char(f(k)) 'converges and approaches the value of ' char(convergence)]) 
else 
    fprintf('The sequence diverges.') 
end 

%Problem 2 - Infinite Series
syms n
f(n)=(1)/((n)*(n+1));
sum = eval(subs(f(n),n,1:4));
partialSums=cumsum(sum);
disp(['The first term of the partial sums for the infinite series ' char(f(n)) 'is ' num2str(partialSums(1)) '.']);
disp(['The second term of the partial sums for the infinite series ' char(f(n)) 'is ' num2str(partialSums(2)) '.']);
disp(['The third term of the partial sums for the infinite series ' char(f(n)) 'is ' num2str(partialSums(3)) '.']);
disp(['The fourth term of the partial sums for the infinite series ' char(f(n)) 'is ' num2str(partialSums(4)) '.']);

%Graph the Infinite Series
figure(2)
partial50 = eval(subs(f(n),n,1:50));
partialSums50 = cumsum(partial50);
plot (partialSums50, 'o')
title('Graph of Partial Sums')
xlabel('x')
ylabel('y')

disp(['The series converges and approaches the value '  num2str(partialSums50(50)) '.'])


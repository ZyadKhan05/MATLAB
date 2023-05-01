syms t;
R = -10*exp(-2*t)+10;
Z = -15*exp(-t)+15;

lim = limit (R/Z, t, inf);
fprintf('The limit is %.3f', lim)
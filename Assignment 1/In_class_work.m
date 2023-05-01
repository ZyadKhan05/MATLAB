syms B
syms A
syms C

B = [0 0 1 1 ; 0 1 1 0];


A = [cos(pi/6), -sin(pi/6) ; sin(pi/6), cos(pi/6)];

C = A*B;
patch(B(1,:), B(2,:), 'c') 
patch(C(1,:),C(2,:),'r')
axis([-2,2,-2,2])

C = A*A*B;
patch (C(1,:),C(2,:),'r')

C = A*A*A*B;
patch (C(1,:),C(2,:),'g')

C = A*A*A*A*B;
patch (C(1,:),C(2,:),'b')

C = A*A*A*A*A*B;
patch (C(1,:),C(2,:),'m')

C = A*A*A*A*A*A*B;
patch (C(1,:),C(2,:),'k')

clf 

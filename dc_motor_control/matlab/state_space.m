params = motor_params();

R = params.R;
L = params.L;
J = params.J;
b = params.b;
K = params.K;

A = [-b/J K/J
    -K/L -R/L];
B = [0
    1/L];
C = [1  0];
D = 0;

motor_ss = ss(A,B,C,D);

step(motor_ss,'b')
grid on
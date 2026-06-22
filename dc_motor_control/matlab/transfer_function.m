params = motor_params();

R = params.R;
L = params.L;
J = params.J;
b = params.b;
K = params.K;

s=tf('s')
P_motor = K/((J*s+b)*(L*s+R)+K^2)

step(6*P_motor,'b',12*P_motor,'r',24*P_motor,'g')
grid on
legend('6 V','12 V','24 V')
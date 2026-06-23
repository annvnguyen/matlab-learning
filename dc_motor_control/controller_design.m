params = motor_params();

R = params.R;
L = params.L;
J = params.J;
b = params.b;
K = params.K;

s=tf('s')
P_motor = K/((J*s+b)*(L*s+R)+K^2)

Kp = 100;
Ki = 80;
Kd = 15;
C = pid(Kp, Ki, Kd);
sys_cl = feedback(C*P_motor,1);

t = 0:0.01:5;
step(sys_cl,t)
grid on
title('Proportional-Integral-Derivative Control')
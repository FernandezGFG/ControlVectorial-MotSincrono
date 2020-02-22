%% Dise�o, An�lisis y Simulaci�n de Controlador de Movimiento en Cascada

%% Modulador de Torque equivalente 
% Controlador interno de corriente/torque
p = 5000;

% C�lculo de ganancias proporcionales
disp("Ganancias proporcionales:");
Rqp = Lq*p;     disp("    Rqp = " + Rqp);
Rdp = Ld*p;     disp("    Rdp = " + Rdp);
R0p = Lls*p;    disp("    R0p = " + R0p);

% Ancho de banda
f_corte = p/2/pi;
disp("Frecuencia de corte del modulador de torque: " + f_corte);

%% Controlador Externo de Movimientos: posici�n/velocidad

n = 2.5;
omega_pos = 800;

% Metodo de sinton�a serie
disp("Constantes de PID (m�todo de sinton�a serie):");
ba = Jeq*omega_pos*n;       disp("    ba = " + ba); 
ksa = Jeq*omega_pos^2*n;    disp("    ksa = " + ksa);
ksia = Jeq*omega_pos^3;     disp("    ksia = " + ksia);


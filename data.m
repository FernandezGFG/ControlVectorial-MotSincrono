%% Par�metros equivalentes de la carga mec�nica

% Inercia de la carga
Jl = 0.2520;
DJl = 0.1260;
% Fricci�n viscosa rotacional de la carga
bl = 0;
Dbl = 0.0630;

% Arreglo con los rangos de los par�metros
Jl_range = [Jl-DJl  Jl  Jl+DJl];
bl_range = [bl-Dbl  bl  bl+Dbl];

%% Relaci�n de reducci�n total
r = 314.3008;

%% Par�metros mec�nicos del motor

% Momento de inercia
Jm = 3.1e-6;
% Coeficiente de fricci�n viscosa
bm = 1.5e-5;

%% Par�metros equivalentes del subsistema mec�nico

% Momento de inercia equivalente
Jeq = Jm + Jl/r^2;
% Coeficiente de fricci�n viscosa equivalente
beq = bm + bl/r^2;

% Arreglo con los rangos de los par�metros equivalentes
Jeq_range = Jm + Jl_range/r^2;
beq_range = bm + bl_range/r^2;

%% Par�metros subsistema electromagn�tico

% Pares de polos
Pp = 3;
% Flujo magn�tico equivalente de imanes concatenado por espiras del
% bobinado del estator observado desde el rotor
lambda_rm = 0.01546;
% Inductancia de estator en el eje directo
Ld = 6.6e-3;
% Inductancia de estator en el eje en cuadratura
Lq = 5.8e-3;
% Inductancia de dispersi�n de estator
Lls = 0.8e-3;
% Resistencia del estator por fase, a 40�C
Rs = 1.02;

%% Par�metros subsistema t�rmico

% Capacitancia t�rmica de estator
Cts = 1.091;

alpha_Cu = 3.9e-3;
Ts_range = [50:10:120];

% Temperatura ambiente m�xima
Tamb_max = 40;

% Resistencia t�rmica estator-ambiente
Rts_amb = 55;
Rs_var = Rs*(1 + alpha_Cu*(Ts_range(:) - Tamb_max)); % Contemplando variaci�n con la temperatura

%% Par�metros equivalentes de la carga mec�nica

% Inercia de la carga
Jl = 0.2520;
DJl = 0.1260;
% Fricci�n viscosa rotacional de la carga
bl = 0;
Dbl = 0.0630;

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


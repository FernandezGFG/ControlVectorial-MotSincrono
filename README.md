# Proyecto Global Integrador: Control de Accionamiento de CA con Motor Sincr�nico de Imanes Permanentes

## Tabla de Contenidos

1. Introducci�n
2. Modelado, An�lisis y Simulaci�n din�mica a Lazo Abierto (sin control realimentado)
    1. Modelo matem�tico equivalente (1 grado de libertad) del subsistema mec�nico del motor
    2. Modelo din�mico del sistema f�sico completo, incorporando el subsistema electromagn�tico y t�rmico
        1. Modelo global no lineal (NL), para $i^{r}_{ds}(t)$ gen�rica

## Descripci�n
El estudio se centra en el modelado, dise�o, simulaci�n y an�lisis de desempe�o de un **sistema de control 
autom�tico de posici�n y movimiento** para un **accionamiento electromec�nico de 4 cuadrantes**, compuesto
 por: m�quina el�ctrica de corriente alterna (CA) trif�sica sincr�nica con excitaci�n por imanes permanentes
 (PMSM), alimentada por inversor trif�sico desde fuente de CC; reductor de velocidad planetario de salida
 hacia la carga mec�nica; y realimentaci�n con 1 sensor de posici�n (encoder) en el eje del motor, m�s 3 
sensores de corriente instant�nea de fases en la salida del inversor al estator.

# Proyecto Global Integrador: Control de Accionamiento de CA con Motor Sincr�nico de Imanes Permanentes

## Descripci�n
El estudio se centra en el modelado, dise�o, simulaci�n y an�lisis de desempe�o de un **sistema de control 
autom�tico de posici�n y movimiento** para un **accionamiento electromec�nico de 4 cuadrantes**, compuesto
 por: m�quina el�ctrica de corriente alterna (CA) trif�sica sincr�nica con excitaci�n por imanes permanentes
 (PMSM), alimentada por inversor trif�sico desde fuente de CC; reductor de velocidad planetario de salida
 hacia la carga mec�nica; y realimentaci�n con 1 sensor de posici�n (encoder) en el eje del motor, m�s 3 
sensores de corriente instant�nea de fases en la salida del inversor al estator.

## Resultados

### An�lisis de Estabilidad a lazo abierto para Sistema LTI
En la siguiente imagen se observa el mapa complejo de los polos y ceros de el sistema LTI a lazo abierto:

![](imgs/OpenLoop_PoleZeroMap.png)

Dado que los par�metros Jl (inercia del motor) y bl (coeficiente de fricci�n viscosa) son variables 
entre un m�nimo y un m�ximo, y la resistencia el�ctrica del estator se puede analizar como funci�n de 
su temperatura, se muestra los valores que toman los polos y el cero al considerar los valores medios o 
nominales (en negro), m�nimos (azul) y m�ximos (rojo) de Jeq y beq mientras la temperatura var�a de 
40�C (marca de mayor espesor) a 115�C.

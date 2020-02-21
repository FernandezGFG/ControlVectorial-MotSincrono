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

#### Determinaci�n de polos y ceros

En la siguiente imagen se observa el mapa complejo de los polos y ceros de el sistema LTI a lazo abierto:

![](imgs/OpenLoop_PoleZeroMap.png)

Dado que los par�metros Jl (inercia del motor) y bl (coeficiente de fricci�n viscosa) son variables 
entre un m�nimo y un m�ximo, y la resistencia el�ctrica del estator se puede analizar como funci�n de 
su temperatura, se muestra los valores que toman los polos y el cero al considerar los valores medios o 
nominales (en negro), m�nimos (azul) y m�ximos (rojo) de Jeq y beq mientras la temperatura var�a de 
40�C (marca de mayor espesor) a 115�C.

#### Evaluaci�n de estabilidad. Determinaci�n de la frecuencia natural y el amortiguamiento

- Frecuencia natural del sistema a lazo abierto: **wn = 314.5047 rad/s**
- Amortiguamiento relativo del sistema a lazo abierto: **s = 0.2838** (Respuesta subamortiguada)

### Respuesta Din�mica en el Dominio del Tiempo para Sistema LTI
A continuaci�n se expone la respuesta del sistema LTI a lazo abierto ante un escal�n de tensi�n de 
**+19.596V** a los **0.1s**, seguido de un escal�n de torque de carga de **+1.57Nm** a los **0.3s**.

Escal�n de tensi�n             |  Escal�n de torque de carga
:-------------------------:|:-------------------------:
![](imgs/OpenLoop_TorqueStep.png)  |  ![](imgs/OpenLoop_VoltageStep.png)

Tensi�n en componentes abc, aplicando transformaci�n inversa de Park:

![](imgs/OpenLoop_Vabc.png)

La respuesta del �ngulo del eje motor en el tiempo es la siguiente:

![](imgs/OpenLoop_Theta.png)

La respuesta de la velocidad angular del eje motor en el tiempo es la siguiente:

Respuesta de velocidad angular |  Ampliaci�n de la respuesta en 0.3s (escal�n de torque de carga)
:-------------------------:|:-------------------------:
![](imgs/OpenLoop_Omega_1.png)  |  ![](imgs/OpenLoop_Omega_2.png)

La corriente iq a la izquierda y a la derecha en componentes abc mediante transformaci�n inversa de Park:

Corriente iq |  Corrientes de fase a, b y c
:-------------------------:|:-------------------------:
![](imgs/OpenLoop_Iq.png)  |  ![](imgs/OpenLoop_Iabc_1.png)

Se verific� que el valor de las componentes d y 0 de corriente tienen valor constante nulo, 
debido a las restricciones impuestas.

La respuesta del torque motor en el tiempo es la siguiente:

Respuesta del torque motor |  Ampliaci�n de la respuesta en 0.3s (escal�n de torque de carga)
:-------------------------:|:-------------------------:
![](imgs/OpenLoop_Tm_1.png)  |  ![](imgs/OpenLoop_Tm_2.png)

La temperatura del estator en el tiempo es la siguiente:

Temperatura del estator |  Temperatura en lapso de tiempo mayor
:-------------------------:|:-------------------------:
![](imgs/OpenLoop_Ts_1.png)  |  ![](imgs/OpenLoop_Ts_2.png)

### An�lisis de Controlabilidad del Sistema LTI

### An�lisis de Observabilidad del Sistema LTI


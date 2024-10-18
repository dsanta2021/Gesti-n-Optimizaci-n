%% Ejemplo Problema Transporte Ríos y Ciudades
M = 10000;
Z = [];  %% Z es la función objetivo

    %% Restricciones
        %%Inecuaciones
A = [];

B = [];

         %%Igualdades
C = [1 1 1 1 0 0 0 0 0 0 0 0;
    0 0 0 0 1 1 1 1 0 0 0 0;
    0 0 0 0 0 0 0 0 1 1 1 1;
    1 0 0 0 1 0 0 0 1 0 0 0;
    0 1 0 0 0 1 0 0 0 1 0 0;
    0 0 1 0 0 0 1 0 0 0 1 0;
    0 0 0 1 0 0 0 1 0 0 0 1];

D = [];

lb = zeros(1,12);  %Cota infeior
ub = [inf inf inf inf inf inf inf inf inf inf inf inf]; % igual a no ponetr nada []     %Cota superior

intcon = [1 2 3 4 5 6 7 8 9 10 11 12];  %variable que indica las variables que son enteras

%%Función
[x, fval] = intlinprog(Z,intcon, A, B, C, D, lb, ub)
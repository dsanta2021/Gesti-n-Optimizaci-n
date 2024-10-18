%% Ejemplo Problema Transporte Alumnos y Universidades
M = 10000;
Z = [464 513 654 867 352 416 690 791 995 682 388 685];  %% Z es la función objetivo

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

D = [75 125 100 80 65 70 85];

lb = zeros(1,12);  %Cota infeior
ub = [inf inf inf inf inf inf inf inf inf inf inf inf]; % igual a no ponetr nada []     %Cota superior

intcon = [1 2 3 4 5 6 7 8 9 10 11 12];  %variable que indica las variables que son enteras

%%Función
[x, fval] = intlinprog(Z,intcon, A, B, C, D, lb, ub)
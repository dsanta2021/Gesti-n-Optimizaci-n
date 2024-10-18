%% Ejemplo Producción A,B,C,D
M = 10000;
Z = -[50 60 55 80 -14500 -10000 -8000 -9000];  %% Z es la función objetivo

    %% Restricciones
        %%Inecuaciones
A = [1 0 0 0 -M 0 0 0;
    0 1 0 0 0 -M 0 0;
    0 0 1 0 0 0 -M 0;
    0 0 0 1 0 0 0 -M;
    10 15 5 14 0 0 0 0;
    0 0 0 0 1 0 -1 -1;
    -1 0 0 0 1000 0 0 0;
    0 -1 0 0 0 1500 0 0;
    0 0 -1 0 0 0 3000 0;
    0 0 0 -1 0 0 0 2000];

B = [0 0 0 0 20000 0 0 0 0 0];

         %%Igualdades
C = [];
D = [];

lb = zeros(1,8);  %Cota infeior
ub = [inf inf inf inf 1 1 1 1];     %Cota superior

intcon = [5 6 7 8];  %variable que indica las variables que son enteras

%%Función
[x, fval] = intlinprog(Z,intcon, A, B, C, D, lb, ub)

%% Ejemplo Good Products Company
M = 1000;
Z = -[5 7 3 0 0 0 0];  %% Z es la función objetivo

    %% Restricciones
        %%Inecuaciones
A = [3 4 2 +M 0 0 0;
    4 6 2 -M 0 0 0;
    1 0 0 0 -7 0 0;
    0 1 0 0 0 -5 0;
    0 0 1 0 0 0 -9;
    0 0 0 0 1 1 1];

B = [30+M 40 0 0 0 2];

         %%Igualdades
C = [];
D = [];

lb = zeros(1,7);  %Cota infeior
ub = [7 5 9 1 1 1 1];     %Cota superior

intcon = [4 5 6 7];  %variable que indica las variables que son enteras

%%Función
[x, fval] = intlinprog(Z,intcon, A, B, C, D, lb, ub)
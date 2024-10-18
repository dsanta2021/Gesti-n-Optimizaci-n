%% Ejemplo Videojuegos Nintendo
M = 10000;
Z = -[70 60 90 80 -50000 -40000 -70000 -60000 0];  %% Z es la función objetivo

    %% Restricciones
        %%Inecuaciones
A = [1 0 0 0 -M 0 0 0 0;
    0 1 0 0 0 -M 0 0 0;
    0 0 1 0 0 0 -M 0 0;
    0 0 0 1 0 0 0 -M 0;
    0 0 0 0 1 1 1 1 0;
    0 0 0 0 -2 -2 1 1 0;
    5 3 6 4 0 0 0 0 M;
    4 6 3 5 0 0 0 0 -M];

B = [0 0 0 0 2 0 6000+M 6000];

         %%Igualdades
C = [];
D = [];

lb = zeros(1,9);  %Cota infeior
ub = [inf inf inf inf 1 1 1 1 1];     %Cota superior

intcon = [5 6 7 8 9];  %variable que indica las variables que son enteras

%%Función
[x, fval] = intlinprog(Z,intcon, A, B, C, D, lb, ub)

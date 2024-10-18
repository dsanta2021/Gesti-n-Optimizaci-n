%% Ejemplo

Z = [2 3];  %% Minimización de Z es la función objetivo

    %% Restricciones
        %%Inecuaciones
A = [0.5 0.25; -1 -3];
B = [4 -20];

        %%Igualdades
C = [1 1];
D = [10];

lb = [0 0];  %Cota infeior
ub = [];     %Cota superior

%%Función
[x, fval] = linprog(Z, A, B, C, D, lb, ub)

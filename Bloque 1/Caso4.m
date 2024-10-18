%% Ejemplo Harry Potter
Z = -[90 50 60 40];  %% Z es la función objetivo

    %% Restricciones
        %%Inecuaciones
A = [600 300 500 200; 
    -1 0 1 0;
    0 -1 0 1;
    0 0 1 1];

B = [1000 0 0 1];

        %%Igualdades
C = [];
D = [];

lb = [0 0 0 0];  %Cota infeior
ub = [1 1 1 1];     %Cota superior

intcon = [1 2 3 4];  %variable que indica las variables que son enteras

%%Función
[x, fval] = intlinprog(Z,intcon, A, B, C, D, lb, ub)
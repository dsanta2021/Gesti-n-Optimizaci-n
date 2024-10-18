%% Ejemplo Union Airways

Z = [170 160 175 180 195];  %% Z es la función objetivo

    %% Restricciones
        %%Inecuaciones
A = [1 0 0 0 0; 
    1 1 0 0 0;
    1 1 0 0 0;
    1 1 1 0 0;
    0 1 1 0 0;
    0 0 1 1 0;
    0 0 1 1 0;
    0 0 0 1 0;
    0 0 0 1 1;
    0 0 0 0 1];

B = [48 79 65 87 64 73 82 43 52 15];

        %%Igualdades
C = [];
D = [];

lb = [0 0];  %Cota infeior
ub = [];     %Cota superior

%%Función
[x, fval] = linprog(Z, -A, -B, C, D, lb, ub)
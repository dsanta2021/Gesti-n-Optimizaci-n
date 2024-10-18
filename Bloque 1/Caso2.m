%% Ejemplo Nori & Leets Co.

Z = [8 10 7 6 11 9];  %% Minimización de Z es la función objetivo

    %% Restricciones
        %%Inecuaciones
A = [-12 -9 -25 -20 -17 -13;
    -35 -42 -18 -31 -56 -49; 
    -37 -53 -28 -24 -29 -20];

B = [-60 -150 -125];

lb = zeros(6, 1); %=[0 0 0 0 0 0];  %Cota infeior    
ub = ones(6, 1); %= [1 1 1 1 1 1];  %Cota superior


%%Función
[x, fval] = linprog(Z, A, B,[], [], lb, ub)

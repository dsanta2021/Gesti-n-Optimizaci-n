%% Ejemplo Bebidas para la fiesta
Z = -[3 4 5 6 7 8 9 10 11 12];  %% Z es la función objetivo

    %% Restricciones
        %%Inecuaciones
A = [13 14 15 16 17 18 19 20 21 22; 
    0 0 0 -1 -1 0 0 0 0 0;
    0 0 -1 0 0 0 0 0 0 -1;
    0 -1 0 0 1 1 0 0 0 0;
    -1 -1 0 0 0 1 0 0 0 0];

B = [101 -1 0 1 0];

         %%Igualdades
C = [1 1 1 0 0 0 0 0 0 0];
D = 1;

lb = zeros(1,10);  %Cota infeior
ub = ones(1,10);     %Cota superior

intcon = [1 2 3 4 5 6 7 8 9 10];  %variable que indica las variables que son enteras

%%Función
[x, fval] = intlinprog(Z,intcon, A, B, C, D, lb, ub);
disp("Para maximizar el precio de la nevera debes comprar:")
disp(x)
disp("El precio de la nevera será de: " + -1*fval + " €")
%% Problema 3 Examen 2022
M = 10000;
Z = [2 3 4.5 3 3.5 3 3 4 1.5 2 5 2 0 0 0];  %% Z es la función objetivo

    %% Restricciones
        %%Inecuaciones
A = [];

B = [];

         %%Igualdades
    %x11 x12 x13 x21 x22 x23 x31 x32 x33 x41 x42 x43 x51 x52 x53
C = [ 1   1   1   0   0   0   0   0   0   0   0   0   0   0   0;
      0   0   0   1   1   1   0   0   0   0   0   0   0   0   0;
      0   0   0   0   0   0   1   1   1   0   0   0   0   0   0;
      0   0   0   0   0   0   0   0   0   1   1   1   0   0   0;
      0   0   0   0   0   0   0   0   0   0   0   0   1   1   1;
      1   0   0   1   0   0   1   0   0   1   0   0   1   0   0;
      0   1   0   0   1   0   0   1   0   0   1   0   0   1   0;
      0   0   1   0   0   1   0   0   1   0   0   1   0   0   1];

D = [220 130 250 200 100 400 300 200];

lb = zeros(1,15);  %Cota infeior
ub = [];     %Cota superior

intcon = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15];  %variable que indica las variables que son enteras

%%Función
[x, fval] = intlinprog(Z,intcon, A, B, C, D, lb, ub);
disp('x =')
disp(x)
disp('Resultado: ')
disp(fval)

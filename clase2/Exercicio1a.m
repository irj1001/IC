function [conjuntoDeTreino_x,conjuntoDeTreino_y] = Exercicio1a(drawDigits)
%Define un conjunto de entrenamiento
%Debe contener diversos ejemplos de cada dígito,
%conteniendo ruido para aunmentar las capacidades de generalización
% Considere 5 ejemplos - matrices representativas de 5 y 10 ejemlos
% representativos de otros dígitos

%Input:
% drawDigits - Se igual a 1, hace una ilustracion de los datos

%Output:
%conjuntoDeTreino_x - conjutno de entrenamiento, constiturido por 5
%ejemplos de digito 5
%Fichero Aula02TrainingData

zero = [0 1 1 1 0;
        1 0 0 0 1;
        1 0 0 0 1;
        1 0 0 0 1;
        1 0 0 0 1;
        1 0 0 0 1;
        0 1 1 1 0];
    
 cinco1 = [1 1 1 1 1;
         1 0 0 0 0;
         1 0 0 0 0;
         1 1 1 1 1;
         0 0 0 0 1;
         0 0 0 0 1;
         1 1 1 1 1];
     
 cinco2 = [1 1 1 1 1;
         0 1 0 0 0;
         0 1 0 0 0;
         0 1 1 1 1;
         0 0 0 0 1;
         0 0 0 0 1;
         1 1 1 1 1];
     
dos =    [1 1 1 1 1;
         0 0 0 0 1;
         0 0 0 0 1;
         1 1 1 1 1;
         1 0 0 0 0;
         1 0 0 0 0;
         1 1 1 1 1];
     
d = [0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0];
e = [0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0];
f = [0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0];
g = [0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0;0 0 0 0 0];
h = [1 1 1 1 1;1 0 0 0 1;1 0 0 0 1;1 1 1 1 1;1 0 0 0 1;1 0 0 0 1;1 1 1 1 1];
tres = [1 1 1 1 1;
        0 0 0 0 1;
        0 0 0 1 0;
        0 0 1 0 0;
        0 0 0 1 0;
        0 0 0 0 1;
        1 1 1 1 1];
    
uno = [0 0 1 0 0;
       0 1 1 0 0;
       1 0 1 0 0;
       0 0 1 0 0;
       0 0 1 0 0;
       0 0 1 0 0;
       1 1 1 1 1];
%Concatenar datos
conjuntoDeTreino_x=[zero,uno,dos,tres,cuatro,cinco1,cinco2,cinco3,cinco4,cinco5,seis1,seis2,siete,ocho,nueve]';
conjuntoDeTreino_y=[0 0 0 0 0 ...
                    1 1 1 1 1 ...
                    0 0 ...
                    0 0 0];
end


function [ w,b ] = inicializa( p,t )
% Función que inicializa los pesos y bias de una red
% Inputs:  
% p - entradas de la red
% t - salidas de la red
% Outputs:
% w - pesos inicializados aleatoriamente
% b - bias inicializado a cero
lineas=size(p,1);

w=randn(1,lineas);
b=0;
end


function [ conjuntoDeTest_x,conjuntoDeTest_y ] = Exercicio1b( drawDigits )
%TEST Summary of this function goes here
%   Detailed explanation goes here

%weno aqaui hay que poner dos ejemplos de cada digito pero da por culo



conjuntoDeTest_x=[zero1;zero2;...
                  uno1;uno2;...
                  dos2;dos2;...
                  tres1;tres2;...
                  cuatro1;cuatro2;...
                  cinco1;cinco2;...
                  seis1;seis2;...
                  siete1;siete2;...
                  ocho1;ocho2;...
                  nueve1;nueve2;...
                  ]';
                  
conjuntoDeTest_y=[ 0 0 ...
                   0 0 ...
                   0 0 ...
                   0 0 ...
                   0 0 ...
                   1 1 ...
                   0 0 ...
                   0 0 ...
                   0 0 ...
                   0 0 ...
                   ];
end


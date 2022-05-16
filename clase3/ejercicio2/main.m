close all; clear; clc

% generics
delimiterIn = ',';
classNames = 0:9;

% Conjunto de entrenamiento
filename = 'optdigits.tra';
conjuntoDeTreino = importdata(filename,delimiterIn);
conjuntoDeTreino_x = conjuntoDeTreino(:,1:end-1)';
conjuntoDeTreino_y_temp = conjuntoDeTreino(:,end)';
conjuntoDeTreino_y=squeeze(onehotencode(conjuntoDeTreino_y_temp,10,'ClassNames',classNames))';
size(conjuntoDeTreino_x)
size(conjuntoDeTreino_y)


% Conjunto de test
delimiterIn = ',';
filename = 'optdigits.tes';
conjuntoDeTest = importdata(filename,delimiterIn);
conjuntoDeTest_x = conjuntoDeTreino(:,1:end-1)';
conjuntoDeTest_y_temp = conjuntoDeTreino(:,end)';
conjuntoDeTest_y=squeeze(onehotencode(conjuntoDeTest_y_temp,10,'ClassNames',classNames))';
size(conjuntoDeTest_x)
size(conjuntoDeTest_y)


% c) Entrenar la red 
numero_de_neuronas=10;
coeficiente_aprendizaje=0.01;
drawOn=1;
net=Execicio1c(Exercicio1c( numero_de_neuronas,coeficiente_aprendizaje,conjuntoDeTreino_x,conjuntoDeTreino_y,conjutnoDeTest_x,conjuntoDeTest_y,drawOn ));

% Evaluar desempeño










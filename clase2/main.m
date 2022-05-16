close all; clear; clc

% a) Generar el conjunto de entrenamiento
drawDigits=0;
[conjuntoDeTreino_x,conjuntoDeTreino_y]=Exercicio1a(drawDigits);
size(conjuntoDeTreino_x);
size(conjuntoDeTreino_y);

% b) Generar el conjunto de test
drawDigits=0;
[conjuntoDeTest_x,conjuntoDeTest_y]=Exercicio1b(drawDigits);
size(conjuntoDeTest_x);
size(conjuntoDeTest_y);

% c) Entrenar la red y evaluar el desempeño
numero_de_neuronas=10;
coeficiente_aprendizaje=0.01;
drawOn=0;
[net,~]=Execicio1c(Exercicio1c( numero_de_neuronas,coeficiente_aprendizaje,conjuntoDeTreino_x,conjuntoDeTreino_y,conjutnoDeTest_x,conjuntoDeTest_y,drawOn );

% c) variamos el coeficiente de aprendizaje y el níumero de neuronas
drawOn=0;
numero_de_neuronas=[];coeficiente_aprendizaje=[];accuracy=[];time=[];
T=table(numero_de_neuronas,coeficiente_aprendizaje,accuracy,time);
for numero_de_neuronas=[5 10 20 30]
    for coeficiente_aprendizaje=[0.01 1 100 100000 10000000]
        tic;
        [net,accuracy]=Exercicio1c(numero_de_neuronas,coeficiente_aprendizaje,conjuntoDeTreino_x,conjuntoDeTreino_y,conjutnoDeTest_x,conjuntoDeTest_y,drawOn);
        time=toc;
        Tnew=table(numero_de_neuronas,coeficiente_aprendizaje,accuracy,time);
        T=[T;Tnew];
    end    
end        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
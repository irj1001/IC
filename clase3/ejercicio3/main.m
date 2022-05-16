close all; clear; clc

nrClasses=10;
classNames=0:9;

%Leer conjutno de entrenamiento
[images,labels]=processMNISTdata('train-images.idx3-ubyte','train-images.idx1-ubyte');
figure;colormap(gray) % set to grayscale

for i = 1:25 % preview first 25 samples
 subplot(5,5,i) % plot them in 5 x 5 grid
 digit = reshape(images(:,i),[28,28]); %row=28x28 image
 imagesc(digit) % show the image
end

%disp(labels(1:25))

conjuntoDeTreino_x=images'
conjuntoDeTreino_y_temp=labels;
conjuntoDeTreino_y=squeeze(onehotencode(conjuntoDeTreino_y_temp,nrClasses,'ClassNames',classNames))';
size(conjuntoDeTreino_x)
size(conjuntoDeTreino_y)

%Leer conjutno de test
[images,labels]=processMNISTdata('t10k-images.idx3-ubyte','t10k-images.idx1-ubyte');
figure;colormap(gray) % set to grayscale

for i = 1:25 % preview first 25 samples
 subplot(5,5,i) % plot them in 5 x 5 grid
 digit = reshape(images(:,i),[28,28]); %row=28x28 image
 imagesc(digit) % show the image
end

%disp(labels(1:25))

conjuntoDeTest_x=images'
conjuntoDeTest_y_temp=labels;
conjuntoDeTest_y=squeeze(onehotenconde(conjuntoDeTest_y_temp,nrClasses,'ClassNames',classNames))';
size(conjuntoDeTest_x)
size(conjuntoDeTest_y)


% c) Entrenar la red 
numero_de_neuronas=10;
coeficiente_aprendizaje=0.01;
drawOn=1;
net=Execicio3(Exercicio3( numero_de_neuronas,coeficiente_aprendizaje,conjuntoDeTreino_x,conjuntoDeTreino_y,conjutnoDeTest_x,conjuntoDeTest_y,drawOn ));
% El ejercicio 3 es igual que el anterior
% Evaluar desempeño


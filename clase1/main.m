% Eliminar ruido con redes ADALINE de la m�sica "Aleluya"
close all; clear; clc

% Cargar la se�al
load handel
originalSignal=y(1:30000)'; % Seleccionar las primera 30000 notas
% sound(originalSignal,Fs); % Reproducir la m�sica

% A�adir ruido aleatorio
noise=randn(1:length(originalSignal));
noisySignal=originalSignal+noise;
% sound(noisySignal,Fs); % Reproducir la m�sica con el ruido a�adido

% Aplicamos retrasos a la se�al original
d1=0; d2=50; %Probar varios valores
p=regressao(noise,d1,d2);

% Inicializaci�n de los pesos
[w,b]=inicializa(p,noise);

% Entrenamiento de la red
lr=0.01; % Probar varios valores
[y,e,w,b]=adapta(w,b,p,noisySignal,lr);
% sound(e,Fs); % Reproducir la m�sica despu�s de atenuar el ruido con
% ADALINE

% Performance
mse=mse(originalSignal,e) % mean squared error
function [ y_final,error_final,w,b ] = adapta( w,b,p,t,lr )
% Entrenamiento de una red ADALINE
% Inputs:
% w - pesos inciiales
% b - bias inicial
% p - entradas de la red
% t - salidas de la red
% lr - coeficiente de aprendizaje
% Outputs:
% y_final - salida de la red despu�s del entrenamienro
% error_final - vector de errores despu�s del entrenamiento
% w - pesos finales despu�s del entrenamiento
% b - bias final despu�s del entrenamiento

nr_pesos=length(w);
nr_ejemplos=size(p,2);

y=zeros(1,nr_ejemplos); % inicializaci�n de la salida de la red
e=ones(1,nr_ejemplos)*Inf; % inicializaci�n de errores

for i=1:nr_ejemplos % para cada patr�n de entrenamiento
    this_y=w*p(:,i)+b; % calcula la salida para el instante i

    e(i)=t(i)-this_y; %calcula el error = objetivo - salida de la red
    
    for j=1:nr_pesos % para cada patr�n de entrenamiento (para cada atributo)
        w(j)=w(j)+2*lr*e(i)*p(j,i); % actualiza los pesos
    end
    
    b=b+2*lr*e(i); % actualiza la bias
end

y_final=w*p+b;
error_final=t-y_final;
end


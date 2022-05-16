function [ net,Acc ] = Exercicio1c( numero_de_neuronas,Coeficiente_Aprendizaje,conjuntoDeTreino_x,conjuntoDeTreino_y,conjutnoDeTest_x,conjuntoDeTest_y,drawOn )
%EXERCICIO1C Summary of this function goes here
% Prueba el desempeño de una red neuronal MLP con el conjutno de entrenamiento y de test
%Presenta la matriz de confusion - función "plotconfusion"
%Input:
%numero_de_neuronas: La red neuronal contará con una capa escondida de una
%cantidad de neuronas definida por el parámetro, si es un vector, serán
%varias capas
%%%%%
%Output
%net - red neuronal entreanda
%Acc - Accuracy

net=patternnet(numero_de_neuronas);

%personalizar el algoritmo de entrenamiento
net.trainFcn='traingd';%gradient descent
% net.trainFcn= 'trainlm'; % Levenberg-Marquardt
net.trainParam.lr=coeficiente_aprendizaje; %learning data

% entrenar la red
net= train(net, conjuntoDeTreino_x, conjuntoDeTreino_y);

%calcular las salidas dadas por la red con el conjutno de test
saidaDaRedeParaConjuntoDeTest= net(conjuntoDeTest_x);

%Matriz de confusión
if drawOn==1
    figure;plotconfusion(conjuntoDeTest_y,saidaDaRedeParaConjuntoDeTest);
end


%¿Cuáles ejemplos dan error?
saidaDaRedeParaConjuntoDeTest=(saidaDaRedeParaConjuntoDeTest>0.5);
digitosCiertos=conjuntoDeTest_x(:,conjuntoDeTest_y~=saidaDaRedeParaConjuntoDeTest);

%Accuracy
Acc=100*(size(digitosCiertos,2)/size(conjuntoDeTest_x,2));



end


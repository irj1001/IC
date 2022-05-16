function net = Exercicio2b( numero_de_neuronas,Coeficiente_Aprendizaje,conjuntoDeTreino_x,conjuntoDeTreino_y,conjutnoDeTest_x,conjuntoDeTest_y,drawOn )
%EXERCICIO1C Summary of this function goes here )
%NET Summary of this function goes here
%   Detailed explanation goes here

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
    conjuntoDeTest_y_dec=onehotdecode(conjuntoDeTest_y,classNames,1);
    saidaDaRedeParaConjuntoDeTest_dec=onehotdecode(saidaDaRedeParaConjuntoDeTest,classNames,1);
    figure;plotconfusion(conjuntoDeTest_y_dec,saidaDaRedeParaConjuntoDeTest_dec);
end



end


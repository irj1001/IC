function y = regressao( x,d1,d2 )
% Función que aplica retrasos a una señal
% Inputs:
% x - señal original
% d1 - limite inferior
% d2 - limite superior
% Output:
% y - matriz con los retrasos aplicados
c=length(x);
f=d2-d1+1;
y=zeros(f,c);
l=0;
for i=d1:d2
    l=l+1;
    y(l,i+1:end)=x(1:end-i);
end

end


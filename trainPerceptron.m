function [ w, b ] = trainPerceptron( x,t )
%TRAINPERCEPTRON Summary of this function goes here
%   Detailed explanation goes here

w = rand(1,2);
b = rand;
e = 1;
aux = 0;

while e ~= 0
    for i = 1:size(t,2)
            p = x(:,i);
            a = hardlim(w*p + b);
            e = t(i) - a;
            b = b + e;
            % regras de treinamento
            w = w + e*p';
            if(e ~= 0)
                aux = 1;
            end
    end
    
    if (e == 0 && aux > 0 ) 
        e = 1;
        aux = 0;
    end
end
end


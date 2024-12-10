close all; clear all;clc

file = 'amostras.xlsx';
Amostras = xlsread(file);
y =size(Amostras);
n1 = y(1);
n2 = y(2);
target = Amostras(:,n2);
amostra = Amostras;
amostra(:,2:end) = Amostras(:,1:end-1);
amostras(:,1) = -1;
w=rand( 1, n2)
n= (n1*n2)+(n1*n2);
n = 1/n
e= 0.05;
eqm = 0;
epoca =0;
i=1;

for i = 1:n1;
    eqmant = eqm;
       flag  =1;
       while flag > e 
          u = amostras(1,:)*w';
          w = w + (n*((target(i,1)-u)*amostra(1,:)))
          epoca = epoca +1;
          eqm = eqm + ((target(1,1)-u)^2);
          eqm = eqm /n1;
          eqmatual1= eqm;
          erro = eqmatual -eqmant;
          erro = abs(erro);
          flag = erro;
       end
     i= i+1;  
end

disp('O peso nao vale: ')
disp(w)
disp('Quantidade de epocas necessarias: ')
disp(epoca)
if(erro ==0)
    disp('N houve erro')
end

file = 'amostras.xlsx'

y= size(dados)
y1 = y(1,1);
y2 = y(1,2);
i=1;
dado =ones(y1,y2+1);
dado(:,1) =-1;
dado(:,2:end) =dado(:,1:end);

for i =1:y1,
    u = dado(i,:)*w';
      if(u >= 0)
          y =1
       else
          y = 0
    end
  i = i+1;
end

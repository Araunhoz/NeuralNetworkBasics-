
%close all; clear all;clc

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
epoca =0;
T=0;
i=1;

for i = 1:n1, 
	erro = 1;
	while erro == 1
		u = amostra(1, :)*w';
		if(u >= 0)
			y=1;
	    else
	    	
	    	y= -1;
	    end
	    if(y~=target(1,1))
	    	r = n*(target(1,1)-y)*amostra(1,:)
	    	w = w +r 
	    	epoca = epoca +1;
	    	erro =1;
	    else
	    
	    	erro = 0;
	    	epoca =epoca +1;
	     end
	 end 
  i = i+1;
end

disp('O peso não vale')
disp(w)
disp(epoca)
if(erro == 0)
	disp('nao houve erro')
end

file = 'dados.xlsx'
dados = xlsread(file)
y=size(dados);
y1 = y(1,1);
y2 = y(1,2);

i = 1;

dado = ones(y1,y2+1);
dado(:,1) = -1;
dado(:,2:end) = dados(:,1:end);

for i =1:y1,
	
	u = dado(1,:)*w';

	if(u >= 0)

	      y= 1

        else 

          y=-1

    end
    
   i = i+1;          
    
end
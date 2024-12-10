close all; clear all;clc
cp1x = [ 1 1 2 2];
cp1y = [ 6 7 6 7];
cp2x = [ 6 6 7 7];
cp2y = [ 6 7 6 7];
cp3x = [ 6 6 7 7];
cp3y = [ 1 2 1 2];
cp4x = [ 1 1 2 2];
cp4y = [ 1 2 1 2];
hold on
plot(cp1x,cp1y, 'ok', 'MarkerFaceColor', 'k')
plot(cp2x,cp2y,'ok', 'MarkerFaceColor', 'k')
plot(cp3x,cp3y,'ok', 'MarkerFaceColor', 'k')
plot(cp4x,cp4y,'ok', 'MarkerFaceColor', 'k')
xlabel('p1')
xlabel('p1')
xlabel('p1')
xlabel('p1')
axis([ 0 8 0 8]);
plot([ 0 5 ],[ 5 0])

hold off

cp1 = [cp1x;cp1y]
cp2 = [cp2x;cp2y]
cp3 = [cp3x;cp3y]
cp4 = [cp4x;cp4y]

% here
w = rand(1,2);
b = rand;
e = 1;
aux = 0;
t= w;
x =b;


while e ~= 0
    for i = 1:size(x,2)
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


% finish

%b=1
%w1 = [-1/5;-1/5];            %polarização (-b/5;-b/5)
%W = w1'
%n = (w*cp4+b) 
%a= hardlim(n)
%a =hardlim(W*cp1 +b)+(W*cp2+b)+ (W*cp3+b)
%figure(2)
%hold on 

%axis([0 9 9 0])
%plot([ 0 5], [5 0])

%xlabel('P1')
%ylabel('P2')


%while(b ==1 )
    %p1 = input('Valor de x : ');
   % p2 = input('Valor de y : ');
    
   % X=[p1;p2]
    
  %  a = hardlim(W*X+b)
    
 %   if(a == 1)
        
 %       disp('O valor logico e 1! ')
%        plot (p1,p2,'ok', 'MarkerFaceColor', 'k') 
%    else disp ('O valor logico e 0! ')
%        plot(p1,p2,'ok', 'MarkerFaceColor', 'k')
%    end
%end
%hold off












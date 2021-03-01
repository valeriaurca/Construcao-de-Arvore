%% Informe o comprimento do Codigo de Reed-Solomon, dado por n=2^m - 1 
n=input('Informe o valor de n :  ');
%% codifica o pacote p1
ri0=input('\n Informe o  grau de gi0:  ');
gi0 = rsgenpoly(n,n-ri0);
p1=input('\n Informe o polinomio p_1 no formato gf([a b c ... ],3):  ');
c1=conv(p1,gi0);
%% codifica o pacote p2
ri1=input('\n Informe o  grau de gi1:  ');
gi1 = rsgenpoly(n,n-ri1);
p2=input('\n Informe o polinomio p_2 no formato gf([a b c ... ],3):  ');
c2=conv(p2,gi1);
%% codifica o pacote p3
ri2=input('\n Informe o  grau de gi2:  ');
gi2 = rsgenpoly(n,n-ri2);
p3=input('\n Informe o polinomio p3 no formato gf([a b c ... ],3):  ');
c3=conv(p3,gi2);
%% codifica o pacote p4
%ri3=input('\n Informe o  grau de gi3:  ');
%gi3 = rsgenpoly(n,n-ri3);
%p4=input('\n Informe o polinomio p_4 no formato gf([a b c ... ],4):  ');
%c4=conv(p4,gi3);
%% Soma todos os resultados anteriores para obter a palavra codigo C_0(x) que sera transmitida

c0=[zeros(1,length(c3)- length(c1)), c1]+ [zeros(1,length(c3)- length(c2)), c2]+c3;

fprintf('\nCoeficientes do polinomio C_0 ( em ordem crescente ) \n\n')
for i=1:length(c0)
    if c0(i)== 0
       c0(i)=fprintf('0 , ');
    elseif c0(i)== 1
           c0(i)=fprintf('1 , ');   
    elseif c0(i)== 2
           c0(i)= fprintf('a , ');
    elseif c0(i)== 3
           c0(i)= fprintf('a^3 , ');
    elseif c0(i)==4
           c0(i)=fprintf('a^2 , ');
    elseif c0(i)==5
           c0(i)=fprintf('a^6 , ');
    elseif c0(i)==6
           c0(i)=fprintf('a^4 , ');
    elseif c0(i)==7
           c0(i)=fprintf('a^5 , ');      
    end
end
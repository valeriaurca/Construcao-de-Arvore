%% Informe o comprimento do Codigo de Reed-Solomon, dado por n=2^m - 1 
n=input('Informe o valor de n :  ');
%% codifica o pacote p1
ri0=input('\n Informe o  grau de gi0:  ');
gi0 = rsgenpoly(n,n-ri0);
p1=input('\n Informe o polinomio p_1 no formato gf([a b c ... ],4):  ');  % (Coeficientes em ordem decrescente )
c1=conv(p1,gi0);
%% codifica o pacote p2
ri1=input('\n Informe o  grau de gi1:  ');
gi1 = rsgenpoly(n,n-ri1);
p2=input('\n Informe o polinomio p_2 no formato gf([a b c ... ],4):  ');  % ( Coeficientes em ordem decrescente )
c2=conv(p2,gi1);
%% codifica o pacote p3
ri2=input('\n Informe o  grau de gi2:  ');
gi2 = rsgenpoly(n,n-ri2);
p3=input('\n Informe o polinomio p3 no formato gf([a b c ... ],4):  ');  % (Coeficientes em ordem decrescente)
c3=conv(p3,gi2);
%% codifica o pacote p4
ri3=input('\n Informe o  grau de gi3:  ');
gi3 = rsgenpoly(n,n-ri3);
p4=input('\n Informe o polinomio p_4 no formato gf([a b c ... ],4):  '); % ( Coeficientes em ordem decrescente )
c4=conv(p4,gi3);
%% Soma todos os resultados anteriores para obter a palavra codigo C_0(x) que sera transmitida

c0=[zeros(1,length(c4)- length(c1)) , c1]+ [zeros(1,length(c4)- length(c2)), c2]+ [zeros(1,length(c4)- length(c3)), c3]+c4;

fprintf('\nCoeficientes do polinomio C_0 ( em ordem decrescente ) \n\n')
for i=1:length(c0)
    if c0(i)== 0
       c0(i)=fprintf('0 , ');
    elseif c0(i)== 1
           c0(i)=fprintf('1 , ');   
    elseif c0(i)== 2
           c0(i)= fprintf('a , ');
    elseif c0(i)== 3
           c0(i)= fprintf('a^4 , ');
    elseif c0(i)==4
           c0(i)=fprintf('a^2 , ');
    elseif c0(i)==5
           c0(i)=fprintf('a^8 , ');
    elseif c0(i)==6
           c0(i)=fprintf('a^5 , ');
    elseif c0(i)==7
           c0(i)=fprintf('a^10 , ');
    elseif c0(i)==8
           c0(i)=fprintf('a^3 , ');       
    elseif c0(i)==9
           c0(i)=fprintf('a^14 , ');      
    elseif c0(i)==10
           c0(i)=fprintf('a^9 , ');    
    elseif c0(i)==11
           c0(i)=fprintf('a^7 , ');
    elseif c0(i)==12
           c0(i)=fprintf('a^6 , ');
    elseif c0(i)==13
           c0(i)=fprintf('a^13 , ');
    elseif c0(i)==14
           c0(i)=fprintf('a^11 , ');
    elseif c0(i)==15
           c0(i)=fprintf('a^12 , ');       
    end
end
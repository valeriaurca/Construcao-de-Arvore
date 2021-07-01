%% Informe o comprimento do Codigo de BCH, dado por n=2^m - 1 
n=input('Informe o valor de n :  ');
%% codifica o pacote p1
ki0=input('\n Informe o  valor de ki0:  ');
gi0 = bchgenpoly(n,ki0);
p1=input('\n Informe o polinomio p_1 no formato gf([a b c ... ],1):  ');
c1=conv(p1,gi0)
%% codifica o pacote p2
ki1=input('\n Informe o  valor de ki1:  ');
gi1 = bchgenpoly(n,ki1);
p2=input('\n Informe o polinomio p_2 no formato gf([a b c ... ],1):  ');
c2=conv(p2,gi1)
%% codifica o pacote p3
ki2=input('\n Informe o  valor de ki2:  ');
gi2 = bchgenpoly(n,ki2);
p3=input('\n Informe o polinomio p_3 no formato gf([a b c ... ],1):  ');
c3=conv(p3,gi2)
%% Soma todos os resultados anteriores para obter a palavra codigo C_0(x) que sera transmitida
fprintf('\nCoeficientes do polinomio C_0 ( em ordem decrescente ) \n\n')
c0=[zeros(1,length(c3)- length(c1)), c1]+ [zeros(1,length(c3)- length(c2)), c2]+c3
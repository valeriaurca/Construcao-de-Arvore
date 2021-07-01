
%%  


%% Informe o numero de bits nas palavras codigo
n=input('Informe o valor de n :  ');
%% codifica o pacote p1
ri0=input('\n Informe o  grau de gi0:  ');
gi0 = cyclpoly(n,n-ri0, 'max'); % Seleciona o polinomio gerador '1 + x+ x^3' para o caso n=7 e k=4
p1=input('\n Informe o polinomio p_1 no formato gf([a b c ... ],1):  ');  % (Coeficientes em ordem crescente )
c1=conv(p1,gi0)
%% codifica o pacote p2
ri1=input('\n Informe o  grau de gi1:  ');
gi1 = cyclpoly(n,n-ri1, 'min');  % Seleciona o polin?minio gerador padr?o '1 + x^2+ x^3 + x^4'
p2=input('\n Informe o polinomio p_2 no formato gf([a b c ... ],1):  ');  % (Coeficientes em ordem crescente )
c2=conv(p2,gi1)
%% codifica o pacote p3
ri2=input('\n Informe o  grau de gi2:  '); 
gi2 = cyclpoly(n,n-ri2); % Seleciona o ?nico polin?minio gerador existente '1 + x + x^2+ x^3 + x^4 +  x^5 +  x^6 '
p3=input('\n Informe o polinomio p_3 no formato gf([a b c ... ],1):  ');  % (Coeficientes em ordem crescente )
c3=conv(p3,gi2)
%% Soma todos os resultados anteriores para obter a palavra codigo C_0(x) que sera transmitida

fprintf('\nCoeficientes do polinomio C_0 ( em ordem crescente ) \n\n')

c0=[ c1,zeros(1,length(c3)- length(c1))]+ [ c2, zeros(1,length(c3)- length(c2))] + c3



%% 

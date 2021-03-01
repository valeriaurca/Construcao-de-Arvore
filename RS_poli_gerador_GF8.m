%% 
%  close all; clc
%% Informe o comprimento do Codigo de Reed-Solomon, dado por n=2^m - 1 
n=input('Informe o valor de n :  ');
%% Informe a Dimensao do Codigo de Reed-Solomon
k=input('Informe o valor de k:  ');
%% 
%[genpoly,t] = rsgenpoly(7,3)  % t retorna a capacidade de corre??o de erro
genpolyRS = rsgenpoly(n,k);
g=genpolyRS;
%%
grau=n-k;
fprintf('\nCoeficientes do polinomio gerador de grau %d ( em ordem decrescente ) \n\n', grau )
for i=1:length(g)
    if g(i)== 0
       g(i)=fprintf('0 , ');
    elseif g(i)== 1
           g(i)=fprintf('1 , '); 
    elseif g(i)== 2
           g(i)= fprintf('a , ');
    elseif g(i)== 3
           g(i)= fprintf('a^3 , ');
    elseif g(i)==4
           g(i)=fprintf('a^2 , ');
    elseif g(i)==5
           g(i)=fprintf('a^6 , ');
    elseif g(i)==6
           g(i)=fprintf('a^4 , ');
    elseif g(i)==7
           g(i)=fprintf('a^5 , ');
          
    end
end
%% Digite no formato gf([a b c ... ],3) ( ordem decrecente )
pj=input('\n Informe o polinomio p_j no formato gf([a b c ... ],3):  ');
%% 
c=conv(pj,genpolyRS);
%%

fprintf('\nCoeficientes do polinomio C_j ( em ordem decrescente ) \n\n')
for i=1:length(c)
    if c(i)== 0
       c(i)=fprintf('0 , ');
    elseif c(i)== 1
           c(i)=fprintf('1 , ');   
    elseif c(i)== 2
           c(i)= fprintf('a , ');
    elseif c(i)== 3
           c(i)= fprintf('a^3 , ');
    elseif c(i)==4
           c(i)=fprintf('a^2 , ');
    elseif c(i)==5
           c(i)=fprintf('a^6 , ');
    elseif c(i)==6
           c(i)=fprintf('a^4 , ');
    elseif c(i)==7
           c(i)=fprintf('a^5 , ');
            
    end
end
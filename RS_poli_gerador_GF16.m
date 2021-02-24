%% 
%  close all; clc
%% Informe o comprimento do Codigo de Reed-Solomon, dado por n=2^m - 1 
n=input('Informe o valor de n :  ');
%% Informe a Dimensao do Codigo de Reed-Solomon
k=input('Informe o valor de k:  ');
%% 
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
           g(i)= fprintf('a^4 , ');
    elseif g(i)==4
           g(i)=fprintf('a^2 , ');
    elseif g(i)==5
           g(i)=fprintf('a^8 , ');
    elseif g(i)==6
           g(i)=fprintf('a^5 , ');
    elseif g(i)==7
           g(i)=fprintf('a^10 , ');
    elseif g(i)==8
           g(i)=fprintf('a^3 , ');       
    elseif g(i)==9
           g(i)=fprintf('a^14 , ');      
    elseif g(i)==10
           g(i)=fprintf('a^9 , ');    
    elseif g(i)==11
           g(i)=fprintf('a^7 , ');
    elseif g(i)==12
           g(i)=fprintf('a^6 , ');
    elseif g(i)==13
           g(i)=fprintf('a^13 , ');
    elseif g(i)==14
           g(i)=fprintf('a^11 , ');
    elseif g(i)==15
           g(i)=fprintf('a^12 , ');       
    end
end
%% Digite no formato gf([a b c ... ],4) ( ordem decrescente )
pj=input('\n Informe o polinomio p_j no formato gf([a b c ... ],4):  ');
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
           c(i)= fprintf('a^4 , ');
    elseif c(i)==4
           c(i)=fprintf('a^2 , ');
    elseif c(i)==5
           c(i)=fprintf('a^8 , ');
    elseif c(i)==6
           c(i)=fprintf('a^5 , ');
    elseif c(i)==7
           c(i)=fprintf('a^10 , ');
    elseif c(i)==8
           c(i)=fprintf('a^3 , ');       
    elseif c(i)==9
           c(i)=fprintf('a^14 , ');      
    elseif c(i)==10
           c(i)=fprintf('a^9 , ');    
    elseif c(i)==11
           c(i)=fprintf('a^7 , ');
    elseif c(i)==12
           c(i)=fprintf('a^6 , ');
    elseif c(i)==13
           c(i)=fprintf('a^13 , ');
    elseif c(i)==14
           c(i)=fprintf('a^11 , ');   
    elseif c(i)==15
           c(i)=fprintf('a^12 , ');         
    end
end
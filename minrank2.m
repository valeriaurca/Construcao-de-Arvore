%% Encontra todas as matrizes A, tais que A-I e' matriz de um subgrafo aresta induzido de G
%% Nessecita da função g2rref.m (Calcula a matriz na forma escada considerando o corpo finito GF(2))
%% 
close all; clc
%%
m = [];
i = 0;
%%
o = input('\nInforme a ordem da matriz de adjacencia do grafo G: ');
A = eye(o);
%% Consulte a funcao digraph(S,T) para entender sobre as listas S e T.
% G = digraph(s,t) specifies directed graph edges (s,t) in pairs to represent the source and target nodes. 
% Para a interpretacao de um grafo de informacoes laterais, considere o seguinte exemplo:
% S = [1 1 1 2 2 3 3 3 4 4 5 5];
% T = [2 3 5 1 3 1 2 4 3 5 1 4];
% G = digraph(S,T) 
%-> 1 1 1 na lista S, significa que o receptor 1 conhece 3 mensagens,
%   2 3 5 na lista T, indica quais os indices das mensagens conhecidas. 

%-> 2 2 na lista S, significa que o receptor 2 conhece 2 mensagens,
%   1 3 na lista T, indica quais os indices das mensagens conhecidas 
%% 
resp = 'sim';
while resp == 'sim'
S = input('\nDigite a lista S: ');
        for k=1:length(S)
            if S(k) > o
                warning('Nenhum valor da lista pode ser maior que a ordem da matriz de adjacencia ');
                resp = 'sim';
                break;
            else
                resp = 'nao';
            end     
        end
end
resp = 'sim';
while resp == 'sim'
    T = input('\nDigite a lista T: ');
    if length(T) ~= length(S)
        warning(' A lista T deve ter o mesmo comprimento da lista S ')
        resp = 'sim';
    else
        for k=1:length(S)
            if T(k) > o
                warning(' Nenhum valor da lista pode ser maior que a ordem da matriz de adjacencia');               
                resp = 'sim';
                break;
            else
                resp = 'nao';
            end     
        end
    end
end
%% Plota o Grafo Direcionado G
G=digraph(S,T);
plot(G)
%%
L = dec2bin(0:2^(length(S))-1)-'0';
%%
for w = 1:length(L)
    for k = 1:length(S)
        A(S(k),T(k)) = L(w,k);
    end
     r = gfrank(A,2);
     m(w) = r;
        
     if r < o
        o = r;
        B = A;
     end
end
%%
C = g2rref(B);
l = min(m);
%% Resolve Sistema C*X, exibindo o código de índice de comprimento l = min(m)
x1=sym('x1');   
x2=sym('x2');
x3=sym('x3');
x4=sym('x4');
x5=sym('x5');
%x6=sym('x6'); %Acrescente manualmente a quantidade de variáveis necessárias para o problema
%x7=sym('x7'); 
%x8=sym('x8');
%x9=sym('x9');
%x10=sym('x10');
% Escolha o conjunto X que contenha todas as variáveis do problema ou acrescente manualmente, conforme necessário.  
%X=[x1; x2]; 
%X=[x1; x2; x3 ]; 
%X=[x1; x2; x3 ; x4]; 
X=[x1; x2; x3 ; x4; x5]; 
%X=[x1; x2; x3 ; x4; x5 ; x6];
%X=[x1; x2; x3 ; x4; x5 ; x6 ; x7];
%X=[x1; x2; x3 ; x4; x5 ; x6 ; x7 ; x8];
%X=[x1; x2; x3 ; x4; x5 ; x6 ; x7 ; x8 ; x9];
%X=[x1; x2; x3 ; x4; x5 ; x6 ; x7 ; x8 ; x9 ; x10];
C*X; 
%%
fprintf('\nminrank_2(G) = %d  \n\n', l )
%disp(t)
%%
fprintf('\nUma matriz A com o rank_2 = %d  \n\n', l )
disp(B)
%%
fprintf('\nMatriz A escalonada  \n\n')
disp(C)
%%
fprintf('\nCodigo de Indice de Comprimento  %d  \n\n', l)
disp(C*X)

%% Deve ser executado ap?s: construcao_arvore_bch
%% Informe a quantidade T de pacotes 
T=input('Informe a quantidade de pacotes :  ');
c0=[zeros(1,length(c3)- length(c1)), c1]+ [zeros(1,length(c3)- length(c2)), c2]+c3;
%% Recupera o pacote p1
[q,r]=deconv(c0,gi1);
fprintf('\nCoeficientes do pacote P1 ( em ordem decrescente ) \n\n')
P1=deconv(r,gi0)
%% Recupera o pacote p2
[q,r]=deconv(c0,gi2);
fprintf('\nCoeficientes do pacote P2 ( em ordem decrescente ) \n\n')
P2=deconv(r,gi1)
%% Recupera o pacote p3
fprintf('\nCoeficientes do pacote P3 ( em ordem decrescente ) \n\n')
P3=deconv(c0,gi2)


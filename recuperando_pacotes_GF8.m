%% Deve ser executado ap?s: construcao_arvore_GF8
%% Informe a quantidade T de pacotes 
T=input('Informe a quantidade de pacotes :  ');
c0=[zeros(1,length(c3)- length(c1)), c1]+ [zeros(1,length(c3)- length(c2)), c2]+c3;
%% Recupera o pacote p1
[q,r]=deconv(c0,gi1);
P1=deconv(r,gi0);
fprintf('\nCoeficientes do pacote P1 ( em ordem decrescente ) \n\n')
for i=1:length(P1)
    if P1(i)== 0
       P1(i)=fprintf('0 , ');
    elseif P1(i)== 1
           P1(i)=fprintf('1 , ');   
    elseif P1(i)== 2
           P1(i)= fprintf('a , ');
    elseif P1(i)== 3
           P1(i)= fprintf('a^3 , ');
    elseif P1(i)==4
           P1(i)=fprintf('a^2 , ');
    elseif P1(i)==5
           P1(i)=fprintf('a^6 , ');
    elseif P1(i)==6
           P1(i)=fprintf('a^4 , ');
    elseif P1(i)==7
           P1(i)=fprintf('a^5 , ');      
    end
end
%% Recupera o pacote p2
[q,r]=deconv(c0,gi2);
P2=deconv(r,gi1);

fprintf('\nCoeficientes do pacote P2 ( em ordem decrescente ) \n\n')
for i=1:length(P2)
    if P2(i)== 0
       P2(i)=fprintf('0 , ');
    elseif P2(i)== 1
           P2(i)=fprintf('1 , ');   
    elseif P2(i)== 2
           P2(i)= fprintf('a , ');
    elseif P2(i)== 3
           P2(i)= fprintf('a^3 , ');
    elseif P2(i)==4
           P2(i)=fprintf('a^2 , ');
    elseif P2(i)==5
           P2(i)=fprintf('a^6 , ');
    elseif P2(i)==6
           P2(i)=fprintf('a^4 , ');
    elseif P2(i)==7
           P2(i)=fprintf('a^5 , ');      
    end
end
%% Recupera o pacote p3
P3=deconv(c0,gi2);

fprintf('\nCoeficientes do pacote P3 ( em ordem decrescente ) \n\n')
for i=1:length(P3)
    if P3(i)== 0
       P3(i)=fprintf('0 , ');
    elseif P3(i)== 1
           P3(i)=fprintf('1 , ');   
    elseif P3(i)== 2
           P3(i)= fprintf('a , ');
    elseif P3(i)== 3
           P3(i)= fprintf('a^3 , ');
    elseif P3(i)==4
           P3(i)=fprintf('a^2 , ');
    elseif P3(i)==5
           P3(i)=fprintf('a^6 , ');
    elseif P3(i)==6
           P3(i)=fprintf('a^4 , ');
    elseif P3(i)==7
           P3(i)=fprintf('a^5 , ');      
    end
end

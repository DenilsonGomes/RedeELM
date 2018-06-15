%Autor: Denilson Gomes Vaz da Silva
%Graduando em Engenharia da Computação
%Controle de Sistemas Dinamicos - Prof. Dr. Vandilberto
%Programa para plotar as duas classes (cores diferentes) e plotar a
%superficie de separação

clc
clear
load twomoons.dat; %Carrega a base de dados

X1 = twomoons(:,1); %X1 recebe o primeiro atributo
X2 = twomoons(:,2); %X2 recebe o segundo atributo

plot(X1(1:501),X2(1:501),'or'); %plota os elementos da primeira classe
hold on; %segura o grafico
plot(X1(502:1001),X2(502:1001),'ob'); %plota os elementos da segunda classe
hold on; %segura o grafico

%construir vetor de entrada com Baes = -1
X = [-ones(length(X1),1),X1,X2]'; % vetor de entradas X(i) = [Baes,X1(i),X2(i)]
[atributos,~] = size(X); %retorna o numero de atributos com o Baes

%iniciar W1 aleatoriamente
n = input('Digite o numero de neuronios da camada oculta: '); %recebe o numero de neuronios da camada oculta
for i=1:n
    for j=1:atributos
        W1(i,j) = rand(1); %preenche W1 com numeros aleatorios
    end
end

%calcular W2
W2 = (pinv(sigmf(W1*X,[1 1]))'*twomoons(:,3))';

%obter Yout
Yout = W2*sigmf(W1*X(:,600),[1 1])
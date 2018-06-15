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
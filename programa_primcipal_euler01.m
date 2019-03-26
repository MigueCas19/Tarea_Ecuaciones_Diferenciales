% scrip usa euler01
%
%funcion y'=f(t,y)
clear all
f=@(t,y) 3+t-y; 

% función del problema
u=@(t) t+2-exp(-t); % solución analítica para comparar
y0=1;
 % número de iteraciones.
h=1/10
t0=0; % intervalo (0,1)
t=0:h:1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h1=0.05;
N1=1/h1;
y1=Euler_mejorado(f,t0,y0,h1,N1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h2=0.025;
N2=1/h2;
y2=Euler_mejorado(f,t0,y0,h2,N2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h3=0.01;
N3=1/h3;
y3=Euler_mejorado(f,t0,y0,h3,N3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h4=0.001;
N4=1/h4;
y4=Euler_mejorado(f,t0,y0,h4,N4)
% Invoca la función que calcula la solución aproximada.
%v=u(t);
%error=abs(v-y); error numérico
%Tabla
%a = [t; y1; y2; y3; y4 ]

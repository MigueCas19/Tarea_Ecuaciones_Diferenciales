
%problema 8.2.1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%funcion
clear all
f=@(t,y) 1-t+4*y; 

u=@(t) -(3/16)+(t/4)+ (19*exp(4*t))/16; % solución analítica para comparar
y0=1;
t0=0; 
t=[0, 0.1, 0.2, 0.3, 0.4, 0.5, 1.0, 1.5, 2.0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% con h=0.01 y con el metodo de euler
h1=0.1;
N1=1/h1;
y1=Euler_esqueleto(f,t0,y0,h1,N1);
y1=corta_vec(y1, N1, h1);

% con h=0.001 y con el metodo de euler
h2=0.01;
N2=1/h2;
y2=Euler_esqueleto(f,t0,y0,h2,N2);
y2=corta_vec(y2, N2, h2);

% con h=0.025 y con el metodo de euler mejorado
h3=0.025;
N3=1/h3;
y3=Euler_mejorado(f,t0,y0,h3,N3);
y3=corta_vec(y3, N3, h3);

% con h=0.01 y con el metodo de euler mejorado
h4=0.01;
N4=1/h4;
y4=Euler_mejorado(f,t0,y0,h4,N4);
y4=corta_vec(y4, N4, h4);



v=u(t);
T = table(t',y1',y2',y3',y4', v', 'VariableNames',{'t', 'en0x01','en0x001','em0x025','em0x01', 'exacta'});
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%problema 8.3.1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h5=0.2;
N5=1/h5;
y5=Runge_kutta(f,t0,y0,h5,N5);
y5=corta_vec_1(y5)

h6=0.1;
N6=1/h6;
y6=Runge_kutta(f,t0,y0,h6,N6);
y6=corta_vec(y6, N6, h6);

h7=0.05;
N7=1/h7;
y7=Runge_kutta(f,t0,y0,h7,N7);
y7=corta_vec(y7, N7, h7);

T1 = table(t',y3',y5',y6',y7', v', 'VariableNames',{'t', 'em0x025','rk0x2','rk0x1','rk0x05', 'exacta'})


%ejercicios 7, 11 de sec.8.3

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ejercicio 7 


f1=@(t,y) 0.5-t+2*y; 
u1=@(t) (t/2)+ exp(2*t);

y0=1;
t0=0; 
t1 = t(6:9)


h8=0.1;
N8=1/h8;
y8=Runge_kutta(f1,t0,y0,h8,N8);
y8=corta_vec(y8, N8, h8);
y8=y8(6:9);

h9=0.05;
N9=1/h7;
y9=Runge_kutta(f1,t0,y0,h9,N9);
y9=corta_vec(y9, N9, h9);
y9=y9(6:9);

v1=u1(t1);

T2 = table(t1',y8',y9', v1', 'VariableNames',{'t', 'rk0x1','rk0x05', 'exacta'})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ejercicio 11


f2=@(t,y) (4-t*y)/(1+y^2); 


y0=-2;
t0=0; 
t2 = t(6:9)


h10=0.1;
N10=1/h10;
y10=Runge_kutta(f2,t0,y0,h10,N10);
y10=corta_vec(y10, N10, h10);
y10=y10(6:9);

h11=0.05;
N11=1/h11;
y11=Runge_kutta(f2,t0,y0,h11,N11);
y11=corta_vec(y11, N11, h11);
y11=y11(6:9);



T3 = table(t2',y10',y11', 'VariableNames',{'t', 'rk0x1','rk0x05'});

% Invoca la función que calcula la solución aproximada.

%error=abs(v-y); error numérico

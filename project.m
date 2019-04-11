%punto 1
t1=[0:0.1:2];
f=@(t,y) 1-t+4*y; 
u=@(t) -(3/16)+(t/4)+ (19*exp(4*t))/16;
v=u(t1)
y0=1;
t0=0; 


h1=0.1;
N1=1/h1;
y1=Euler_esqueleto(f,t0,y0,h1,N1);
y1=y1(1:21);
y2=Euler_mejorado(f,t0,y0,h1,N1);
y2=y2(1:21);
y3=Runge_kutta(f,t0,y0,h1,N1);
y3=y3(1:21);
%plot(t1,y1)
error1=abs(v-y1)
T3 = table(t1',y1',y2', y3', v',  'VariableNames',{'t', 'Euler','EulerMejorado', 'RungeKutta','Exacta'});

h1=0.05;
N1=1/h1;
y1=Euler_esqueleto(f,t0,y0,h1,N1);
y1=y1(1:21);
y2=Euler_mejorado(f,t0,y0,h1,N1);
y2=y2(1:21);
y3=Runge_kutta(f,t0,y0,h1,N1);
y3=y3(1:21);
%plot(t1,y1)
error2=abs(v-y1)
T2 = table(t1',y1',y2', y3', v',  'VariableNames',{'t', 'Euler','EulerMejorado', 'RungeKutta','Exacta'});

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f1=@(t,y) (3*t^2)*(2-y);
u1=@(t) 2+(exp(-t.^3));
v1=u1(t1)
y01=3;
t01=0; 



h1=0.1;
N1=1/h1;
y1=Euler_esqueleto(f1,t01,y01,h1,N1);
y1=y1(1:21);
y2=Euler_mejorado(f1,t01,y01,h1,N1);
y2=y2(1:21);
y3=Runge_kutta(f1,t01,y01,h1,N1);
y3=y3(1:21);
%plot(t1,y1)
error3=abs(v1-y1)
T4 = table(t1',y1',y2', y3', v1',  'VariableNames',{'t', 'Euler','EulerMejorado', 'RungeKutta','Exacta'});

h1=0.05;
N1=1/h1;
y1=Euler_esqueleto(f1,t01,y01,h1,N1);
y1=y1(1:21);
y2=Euler_mejorado(f1,t01,y01,h1,N1);
y2=y2(1:21);
y3=Runge_kutta(f1,t01,y01,h1,N1);
y3=y3(1:21);
%plot(t1,y1)
error4=abs(v1-y1)
T5 = table(t1',y1',y2', y3', v1',  'VariableNames',{'t', 'Euler','EulerMejorado', 'RungeKutta','Exacta'});


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%punto 4
u=5;
f=@(x,y) [y -x+u*(1-x^2)*y]; 
v=[1 0];

h=0.005;
N=1/h;
t=[0:h:30];
y=Runge_kutta_vectorial(f,v,h,N);

%grafica de x(t) vs y(t)
plot(y(1,:),y(2,:), 'blue')
xlabel('x(t)')
ylabel('y(t)')
title('u=5')

%grafica de x(t) vs t
%plot(t,y(1,:), 'blue')
%hold on
%plot(t, y(2,:), 'red')

%legend('x(t)','y(t)')
%grafica de x(t) vs t


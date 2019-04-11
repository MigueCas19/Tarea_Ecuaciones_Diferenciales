function [y] = Runge_kutta( f,t0,y0,h, n )
% matodo de Euler para ec. diferenciales de primer orden
t(1)=t0;
y(1)=y0;
for i=1:2*n
    k1=f(t(i), y(i));
    k2=f(t(i)+0.5*h, y(i)+0.5*h*k1 );
    k3=f(t(i)+0.5*h, y(i)+0.5*h*k2);
    k4=f(t(i)+h, y(i)+h*k3);
    y(i+1)=y(i)+(h/6)*(k1+2*k2+2*k3+k4);
    t(i+1)=t(i)+h;
end

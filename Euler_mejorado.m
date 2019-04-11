function [y] = Euler_mejorado( f,t0,y0,h, n )
% matodo de Euler para ec. diferenciales de primer orden
t(1)=t0;
y(1)=y0;
for i=1:2*n
    
    t(i+1)=t(i)+h;
    yk=y(i)+h*f(t(i),y(i));
    y(i+1)=y(i)+(h/2)*(f(t(i), y(i))+f(t(i+1),yk));
end
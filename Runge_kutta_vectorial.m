function [y] = Runge_kutta( f,v,h, n )
% matodo de Euler para ec. diferenciales de primer orden
y(:,1)=v;
for i=1:30*n
    k1=f(y(1,i), y(2,i))';
    k2=f(y(1,i)+0.5*h.*k1(1,1), y(2,i)+0.5*h*k1(2,1) )';
    k3=f(y(1,i)+0.5*h.*k2(1,1), y(2,i)+0.5*h*k2(2,1))';
    k4=f(y(1,i)+h*k3(1,1), y(2,i)+h*k3(2,1))';
    y(:,i+1)=y(:,i)+(h/6)*(k1+2*k2+2*k3+k4);

end

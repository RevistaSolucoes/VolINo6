%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Vamos a resolver la ecuacion de Lorentz usando el comando 
%  lsode (es un equivalente a ode45 de Matlab) para diferentes
%  parametros y perturbaciones de estos.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Condiciones iniciales
% x0=[1;1;1];
% Valor de los parametros
% a=10;b=28;c=8/3;

x=0;
function xdot=func(x,t)
a=10;b=28;c=8/3;
xdot(1,1)=a*(x(2)-x(1));
xdot(2,1)=x(1)*(b-x(3))-x(2);
xdot(3,1)=x(1)*x(2)-c*x(3);
end

% Dibujamos la solución

x0=[1;1;1];
t=linspace(0,50,5000);
tic;x=lsode("func",x0,t);toc
plot3(x(:,1),x(:,2),x(:,3))
title('Curva de Lorentz con parámetros $\alpha=10$, $\beta=28$ y $\rho=\frac{8}{3}$')
print('CurvaLorentz','-dpdflatex') % crear código latex para edición revista

% Dibujamos proyecciones en cada plano

figure
subplot(1,3,1)
plot(x(:,1),x(:,2),0.000001)
title('Platos')

subplot(1,3,2)
plot(x(:,1),x(:,3),0.000001)
title('Mariposa')
subplot(1,3,3)
plot(x(:,2),x(:,3),0.000001)
title('Buho')
print('Proyecciones','-dpdflatex')

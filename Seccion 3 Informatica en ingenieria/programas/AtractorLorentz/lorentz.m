%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Esta funcion describe las ecuaciones del sistema
%  tractor de Lorentz
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% http://iimyo.forja.rediris.es/matlab/cursolatex011.html



function equations=lorentz(x,a,b,c)
equations(1,1)=a*(x(2)-x(1));
equations(2,1)=x(1)*(b-x(3))-x(2);
equations(3,1)=x(1)*x(2)-c*x(3);
end

%x0=[1;1;1];
%t=linspace(0,50,5000);
%tic;x=lsode( "func ",x0,t);toc
%plot3(x(:,1),x(:,2),x(:,3))

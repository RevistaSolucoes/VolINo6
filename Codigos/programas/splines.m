% Ejecutar este script para ver funcionamiento de spline
% 
% Sea una función conocida (en general esto no se conoce)
% f(x)=sin(x)+cos(2*x) 

% estos serían mis datos 
 X=-pi:0.4:2*pi;
 Y=sin(X)+cos(2*X);

% Calculamos la aproximación mediante splines de Octave

 aprox1=spline(X,Y)


% Vamos a comparar lo calculado con la función que en este caso es conocido 
% recuerda que normalmente no se conoce,
% sino no tendría sentido aproximar algo conocido
figure
% dibujamos la de verdad pero en una maya más densa para acercarnos a la función real
 Xd=-pi:0.05:2*pi;
 Yd=sin(Xd)+cos(2*Xd);
 plot(Xd,Yd,'b')
 hold on

% dibujamos la calculada

  plot(X,ppval(aprox1,X),'r')

legend ({"función conocida f(x)=\sin(x)+\cos(2x)", "aproximación mediante spline"})

  hold off

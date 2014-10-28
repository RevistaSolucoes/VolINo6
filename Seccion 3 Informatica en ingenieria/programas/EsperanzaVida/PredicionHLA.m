%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   Este programa es un script que con los datos del Banco
%%   Mundial de Datos sobre la esperanza de vida de Angola 
%%   desde 1980 a 2012 para hacer una prevision a futuro de la
%%   esperanza de vida usando regresion mediante ecuaciones normales
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Limpiamos la pantalla de salida

clc;

% Hemos creado un archivo csv con los datos mencionados. Lo leemos y
% lo traemos al espacio de trabajo.

datos=csvread("Hopelife.csv");

% La primera fila lleva el nombre de las variables y el comando csvread 
% lo ha leido como 0's. Los quitamos. Recordad que la primera columna es
% el año y la segunda la esperanza de vida de ese año.

datos=datos(2:end,:);


 % Vamos a visualizar los datos dados y sacar algunas conclusiones.
figure
plot(datos(:,1),datos(:,2),'*r','markersize',15)
title('Evolución de la esperanza de vida desde 1980 a 2012')
xlabel('años')
ylabel('esperanza de vida')
legend("Evolución de la esperanza de vida")
print('DatosPuros','-depsc')
disp('Pulse pause para continuar')
pause

% Marcamos los dos clusters o las dos tendencias de los datos

figure
plot(datos(1:16,1),datos(1:16,2),'sr','linewidth',3,'markersize',15)
hold on
plot(datos(17:end,1),datos(17:end,2),'ob','linewidth',3,'markersize',20)
title('Evolución de la esperanza de vida desde 1980 a 2012')
xlabel('años')
ylabel('esperanza de vida')
legend("Tendencia constante","Tendencia lineal","location","southeast")
print('DatosTendencia','-depsc')
disp('Pulse pause para continuar')
pause

% Calculamos la correlación entre las dos variables

x=datos(17:end,1);
y=datos(17:end,2);
disp('El coeficiente de correlación')
corr(x,y)
disp('Pulse pause para continuar')
pause


% De este modo tiene sentido buscar una función lineal para aproximar 
% Los parámetros los calculamos mediante ecuaciones normales ya que no
% se trata de muestras grandes.

X = [ones(length(x), 1) x];
disp('Los valores del modelo')
theta = (pinv(X'*X))*X'*y
disp('Pulse pause para continuar')
pause

% Marcamos los dos clasters o las dos tendencias de los datos

figure
plot(datos(16:end,1),datos(16:end,2),'sr','linewidth',3,'markersize',15)
hold on
xx=1996:2070;
yy=theta(1)+theta(2)*xx;
plot(xx,yy,'-b','linewidth',4)
title('Aproximación de la esperanza de vida en Ángola')
xlabel('años')
ylabel('esperanza de vida')
legend("Datos","Regresión lineal","location","southeast")
print('DatosPredicion','-depsc')

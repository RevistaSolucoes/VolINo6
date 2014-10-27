%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   Este programa es un script que con los datos del Banco
%%   Mundial de Datos sobre la esperanza de vida de Angola 
%%   desde 1980 a 2012 para hacer una prevision a futuro de la
%%   esperanza de vida usando regresion mediante ecuaciones normales
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



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


% Marcamos los dos clasters o las dos tendencias de los datos

figure
plot(datos(1:16,1),datos(1:16,2),'sr','linewidth',3,'markersize',15)
hold on
plot(datos(17:end,1),datos(17:end,2),'ob','linewidth',3,'markersize',20)
title('Evolución de la esperanza de vida desde 1980 a 2012')
xlabel('años')
ylabel('esperanza de vida')
legend("Tendencia constante","Tendencia lineal","location","southeast")
print('DatosTendencia','-depsc')



%octave:41> hold on;
%octave:42> plot(X(:,2), X*theta, 'r-')
%octave:43> legend("Aproximación lineal")
%octave:44> plot(anios, hopelife)
%octave:45> hold on;
%octave:46> plot(X(:,2), X*theta, 'r-')
%octave:47> legend("Aproximación lineal")
%octave:48> legend("Evolución de la esperanza de vida","Aproximación lineal")
%octave:49> 
%octave:49> hold on
%octave:50> anios
%anios =

% Columns 1 through 29:

%   1980   1981   1982   1983   1984   1985   1986   1987   1988   1989   1990   1991   1992   1993   1994   1995   1996   1997   1998   1999   2000   2001   2002   2003   2004   2005   2006   2007   2008

% Columns 30 through 33:

%   2009   2010   2011   2012

%octave:51> size(anios)
%octave:53> plot(anios(1:23), hopelife(1:23),'b',LineWidth,4)
%error: 'LineWidth' undefined near line 1 column 38
%error: evaluating argument list element number 4
%octave:53> plot(anios(1:23), hopelife(1:23),'b','LineWidth?,4)
%error: unterminated character string constant
%parse error:

%  syntax error

%>>> plot(anios(1:23), hopelife(1:23),'b','LineWidth?,4)
                                                      

%octave:53> plot(anios(1:23), hopelife(1:23),'b','LineWidth',4)
%octave:54> legend("Guerra civil angoleña")


%x1 =

%   2002   2003   2004   2005   2006   2007   2008   2009   2010   2011   2012

%octave:68> y1=hopelife(23:33)
%y1 =

%   46   47   48   49   49   49   50   50   51   51   51

%octave:69> plot(anios(1:23), hopelife(1:23),'b','LineWidth?,4)
%error: unterminated character string constant
%parse error:

%  syntax error

%>>> plot(anios(1:23), hopelife(1:23),'b','LineWidth?,4)
                                                      

%octave:69> plot(x1,y1)
%octave:70> plot(x1,y1)
%octave:71> xlabel('Fecha en año');
%octave:72> ylabel('Esperanza de vida en años');
%octave:73> title("Esperanza de vida de Ángola desde 2002 a 2012")
%octave:74> X = [ones(length(x1), 1) x1'];
%octave:75> 
%octave:75> theta = (pinv(X'*X))*X'*y1';
%octave:76> hold on
%octave:77> plot(X(:,2), X*theta, 'r-')
%octave:78> legend("Evolución de la esperanza de vida","Aproximación lineal")
%octave:79> [s' X*theta]
%error: horizontal dimensions mismatch (91x1 vs 11x1)
%octave:79> s=1980:2070;
%octave:80> X = [ones(length(s), 1) s'];
%octave:81> [s' X*theta]


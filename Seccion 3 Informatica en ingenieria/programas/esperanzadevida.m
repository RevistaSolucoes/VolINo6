octave:41> hold on;
octave:42> plot(X(:,2), X*theta, 'r-')
octave:43> legend("Aproximación lineal")
octave:44> plot(anios, hopelife)
octave:45> hold on;
octave:46> plot(X(:,2), X*theta, 'r-')
octave:47> legend("Aproximación lineal")
octave:48> legend("Evolución de la esperanza de vida","Aproximación lineal")
octave:49> 
octave:49> hold on
octave:50> anios
anios =

 Columns 1 through 29:

   1980   1981   1982   1983   1984   1985   1986   1987   1988   1989   1990   1991   1992   1993   1994   1995   1996   1997   1998   1999   2000   2001   2002   2003   2004   2005   2006   2007   2008

 Columns 30 through 33:

   2009   2010   2011   2012

octave:51> size(anios)
octave:53> plot(anios(1:23), hopelife(1:23),'b',LineWidth,4)
error: 'LineWidth' undefined near line 1 column 38
error: evaluating argument list element number 4
octave:53> plot(anios(1:23), hopelife(1:23),'b','LineWidth?,4)
error: unterminated character string constant
parse error:

  syntax error

>>> plot(anios(1:23), hopelife(1:23),'b','LineWidth?,4)
                                                      ^

octave:53> plot(anios(1:23), hopelife(1:23),'b','LineWidth',4)
octave:54> legend("Guerra civil angoleña")


disp('Hemos creado este script para ver las diferentes formas de hacer una función en Octave\n')

% Sin argumentos y sin variables de salida

function simple1()
printf("Imaginação leva-nos a qualquer lado.\n");
endfunction

% Con dos argumentos de entrada

function simple2(nombre,fecha)
  printf("Firmado \n %s \n %s\n",nombre,fecha);
endfunction


% Con argumentos de entrada y variables de salida

function [palabra longitud]=simple3(nombre)
  if (ischar(nombre)==1)
    palabra='True';
    longitud=length(nombre);
    else
      palabra="False";
      longitud=0;
  endif
endfunction

	
  
%%%%% Vamos a ver el resultado de cada una de ellas


simple1()
    
simple2("maria","2 de septiembre de 1996")
    
[sal1 sal2]=simple3("Antonio Yus")
    

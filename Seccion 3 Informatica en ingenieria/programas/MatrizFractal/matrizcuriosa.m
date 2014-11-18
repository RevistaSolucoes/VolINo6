%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Vamos a calcular la matriz curiosa 
% que se construye cumpliendo  que cada entrada ocupa el minimo de su fila y columna entre los
% enteros del 0 al n.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function A=matrizruben(n)
A=zeros(n,n);
for i=2:n
    A(1,i)=i-1;
end
A(:,1)=A(1,:)';
for i=2:n
        for j=i+1:n
          lista=[A(i,[1:i-1 i+1:j-1]) A(1:i-1,j)'];
          A(i,j)=encuentra(lista);
	end
       A(:,i)=A(i,:)';
end



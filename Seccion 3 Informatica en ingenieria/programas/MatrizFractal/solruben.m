function A=solruben(n)
A=zeros(n);
for i=1:n
    for j=1:n
	A(i,j)=abs(i-j);
end
end

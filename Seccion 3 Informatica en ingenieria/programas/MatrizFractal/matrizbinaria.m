function A=matrizbinaria(n);
A=zeros(n);
for i=1:n
    s1=dec2bin(i)-'0';
    for j=i+1:n
	s2=dec2bin(j)-'0';
        c=s1+s2;
        pos=c==2;
        c(pos)=0;
        A(i,j)=sum(c(1:size(c,2)-1).^(size(c,2)-1:-1:1))+c(size(c,2));
    end
end        
end

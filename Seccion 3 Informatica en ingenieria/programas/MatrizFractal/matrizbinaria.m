%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% A(i,j)= (i-1)_2 + (j-1)_2, donde x_2 es en base 
%% binaria y + suma sin llevar (1+1=0,1+0=0+1=1)
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function B=matrizbinaria(n);
A=zeros(n);
for i=0:n-1
    for j=i+1:n-1
	s1=dec2bin(i)-'0';
        m1=size(s1,2);
	s2=dec2bin(j)-'0';
        m2=size(s2,2);
        if m1>m2
	   s2=[zeros(1,m1-m2) s2];
	else if m2>m1
	       s1=[zeros(1,m2-m1) s1];
	end
        c=s1+s2;
        pos=c==2;
        c(pos)=0;
        v=(2*ones(1,size(c,2))).^(size(c,2)-1:-1:0);
        A(i+1,j+1)=c*v';
    end
end 
B=A+A';       
end

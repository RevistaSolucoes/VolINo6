function s=encuentra(lista)
[n m]=size(lista);
i=1;
if min(lista)!=1
   s=1;
else
  lista=sort(lista);
  while (i<m && lista(i+1)-lista(i)<2)
      i=i+1;
  end  
  
  if (i==m-1 &&  lista(i+1)-lista(i)<2)
    s=max(lista)+1;
  else
    s=lista(i)+1;
  end
end

      

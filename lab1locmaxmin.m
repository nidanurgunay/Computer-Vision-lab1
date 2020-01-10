function [I1,I2] = lab1locmaxmin(I,k)   
[r,c,~]=size(I);
Imax=I;
Imin=I;

for i=k+1:1:r-k-1
    for j=k+1:1:c-k-1
        subimg=I(i-k:i+k,j-k:j+k);
        value=max(subimg(:));
        Imax(i,j)=value;
    end
end
for i=k+1:1:r-k-1
    for j=k+1:1:c-k-1
        subimg=I(i-k:i+k,j-k:j+k);
        value=min(subimg(:));
        Imin(i,j)=value;
    end
end

I1=Imax;
I2=Imin;

end
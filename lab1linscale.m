function [image] =lab1linscale (I)
[r,c,~]=size(I);
I=double(I);    
a=min(I(:));
b=max(I(:));
im=zeros(size(I));

a=-a;
d=(255/(a+b));

for i=1:1:r
    for j=1:1:c
       im(i,j)= d*(I(i,j)+a);
       
    end
end

image=(uint8(im));

end
function [image] = lab1condscale(Im,W)

[r2,c2,ch2]=size(W);
if(ch2==3)
   W=rgb2gray(W); 
end

[r1,c1,ch1]=size(Im);
if(ch1==3)
   Im=rgb2gray(Im); 
end
Im=double(Im);
W=double(W);

m1=mean(W(:));
s1=std(W(:));
m2=mean(Im(:));
s2=std(Im(:));

a=m1*(s2/s1)-m2;
b=s1/s2;
im=zeros(size(W));


    im=b.*(Im+a);

image=uint8(im);
end

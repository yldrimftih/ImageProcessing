clear; close; 

f = imread('peppers.png');
a = im2gray(f);
[m,n]=size(a);
arr = ones(3);
arry = arr./sum(arr);

for m=1:1:m
    for n=1:1:n
        b(m,n)=a(m-1,n-1).*arry(m-1,n-1);        
    end
end

imshow(b);
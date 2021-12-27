clear;close;
f = imread('D:KTÜ Dersleri\4-1\Görüntü İşleme\MATLAB\angiogram.jpg');
a = im2gray(f);
[m n] = size(a);
h = imhist(a);

normalize_h = h./(m*n);    %PDF of the image 

cdf = zeros(1,256);
for i=2:256
    cdf(1)=normalize_h(1);
    cdf(i)=cdf(i-1)+normalize_h(i);
end

l = zeros(m,n);
for m = 1:m
    for n= 1:n
        l=(a(m,n)+1);
        t(m,n)=cdf(l);
    end
end


imshow(t);
%imhist(t)
figure(2);
imshow(a);
%imhist(a)



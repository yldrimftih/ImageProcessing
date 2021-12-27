clear;close;
f = imread('D:\KTÜ Dersleri\4-1\Görüntü İşleme\MATLAB\angiogram.jpg');
a = im2gray(f);
[M N] = size(a);
%****************** Log enhancement
% for M = 1:M
%     for N =1:N
%         t(M,N)=round(a(M,N)*log(5));
%     end
% end
%****************** Gamma enhancement
% for M = 1:M
%     for N =1:N
%         t(M,N)=floor(a(M,N)*(0.9^2.5));
%     end
% end
imshow(a);
figure(2);
imshow(t);

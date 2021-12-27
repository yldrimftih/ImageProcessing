clear ;
% disp(' N degerini giriniz');input('N='); N=ans;
% disp(' M degerini giriniz');input('M='); M=ans;
M=64;
N=320;
[x,y]=meshgrid([1:N],[1:M]); %Test görüntüsü oluşturur
gor(y,x)=150;
for y=round(M/2)-2:round(M/2)+2
for x=round(N/3):round(2*N/3)
gor(y,x)=80;
end
end
subplot(1,2,1);
imshow(gor, [0 255]);
title('olusturulan görüntü')

idx = find ( u > M / 2 ) ;
u(idx ) = u ( idx ) - M ;
idy= find ( v > N/2 ) ;
v(idy ) = v(idy) - N ;
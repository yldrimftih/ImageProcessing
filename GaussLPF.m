clear; 

img = im2gray(imread('lena.jpg'));

FT_img = fft2(img);
FTS_img = fftshift(FT_img);

[m,n] = size(img);

u = 1:m;
v = 1:n;

idx = find(u>m/2);
idy = find(v>n/2);

u(idx) = u(idx) - m;
v(idy) = v(idy) - n;

[U,V] = meshgrid(u,v);
d= U.^2 +V.^2;

d0 = 10; % standart deviation
deg = 2;

h= exp((-d.^2./(2.*d0)));
g = FT_img.*h;

imshow(log(1+abs(fftshift(h))));

IFT_img = real(ifft2(g));
figure(2);
imshow(IFT_img,[]);
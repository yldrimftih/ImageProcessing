%ideal low pass filter

clear; 
input = im2gray(imread('lena.jpg'));
[x,y] = size(input);

%centered
for m = 1:x
    for n = 1:y
        out(m,n) = input(m,n)*(-1)^(x+y);
    end
end

F = fft2(out);
d0 = 30;

u = 0:(x-1);
idx = find(u > x/2);
u(idx) = u(idx) - x;

v = 0:(y-1);
idy = find(v > y/2);
v(idy) = v(idy) - y;

[V,U] = meshgrid(v,u);

D = sqrt(U.^2+V.^2);

H = double(D <= d0);

G = H.*F;

output_image = real(ifft2(double(G)));

subplot(2, 1, 1), imshow(input),
subplot(2, 1, 2), imshow(output_image, [ ]);

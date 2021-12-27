clear; close;
%generate Gauss filter 
std = 0.187;
size = [5 5];
[x,y] = meshgrid(-(size(2)-1)/2:(size(2)-1)/2, -(size(1)-1)/2:(size(1)-1)/2);
h = 2*pi*std*std*exp(-2*pi*pi*std*std*(x.*x + y.*y));
h2 = exp(-(x.*x + y.*y)/(2*std*std));

h = 256*h/sum(sum(h)); %for 5x5 Gauss filter
h1 = sum(sum(h));
h2 = 200*h2/sum(sum(h2));
%imshow(h1, [0 255]);
surfl(h2);
%imshow(h2, [0 255]);
%colormap(copper);

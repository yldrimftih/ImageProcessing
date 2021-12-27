% [X,map] = imread('lena.png');
% imshow('lena.jpg');
% info = imfinfo('lena.png');
% imwrite(X,'lena.jpg');
%----------------------------------
clear; close;
M = 320;
N = 320;
[x,y] = meshgrid([1:N],[1:M]);
gor(y,x) = 150;                       %color of background
    for y=round(M/2)-10:round(M/2)+10 %Thickness
        for x=round(N/3):round(2*N/3) %Length
        gor(y,x)=80;                  %color tone of the bar
        end
    end
%subplot(1,2,1);
%imshow(gor,[0 255]);

f_file = fopen('pic.raw','w');        %write the image created to f_file
fwrite(f_file,gor,'uint8');
fclose(f_file);

f_file2 = fopen('pic.raw','r');       %read the image from pic.raw
A = fread(f_file2,M*N,'uint8');
A1 = A;
z=1;                                  %convert the image read from file to 2-dimension array

for y=1:N
    for x=1:M
        B(x,y)=A1(z);
        z = z +1;
    end
end
subplot(1,2,1);
imshow(B,[0 255]);
fclose(f_file2);


  

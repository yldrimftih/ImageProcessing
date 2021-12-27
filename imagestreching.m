clear; close;
f = imread('D:\KTÜ Dersleri\4-1\Görüntü İşleme\MATLAB\angiogram.jpg');
a = im2gray(f);
n=0:1:255;
[x y] = size(a);
for x=1:950
    for y=1:945
        if a(x,y)<=80 
            a(x,y)=20;
        elseif a(x,y)==80||a(x,y)>=80
             a(x,y)=255;
        elseif a(x,y)>=200
            a(x,y)=20;
        end
    end
end
imshow(a,[0 255]);
figure(2)
imshow(im2gray(f),[0 255]);
        
                      
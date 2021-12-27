clear; close;

for i=1:256
    for j=1:256
        x(i,j) = j-1
    end
end
imshow(x,[0 255]);
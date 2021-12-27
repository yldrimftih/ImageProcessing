clear; close;

% for i=1:256
%     for j=1:256
%         X(i,j) = j-1;
%     end
% end
[X,map] = imread('mamo.jpeg');
Y = 255 - X;
imshow(Y, [0 256]);
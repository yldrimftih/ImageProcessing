clear;close;
M=1024;
N=1024;

for N=1:N
    for M=1:M
        a(M,N)=N;
    end
end
imshow(a,[0 1024]);

for N=1:N
    for M=1:M
        a(M,N)=round(N*(1.2^0.2));
        if a(M,N)>1024
            a(M,N)=1024;
        end
    end
end
figure(2);
imshow(a,[0 1024]);

clc; 
clear all; 
close all;

i1 = imread('A.jpg');
i2 = rgb2gray(i1);
[m, n] = size(i2);
sum = 0;
p = 3;
f = floor(p/2);

z = zeros(m, n);

for x=1:m
    for y=1:n
        sum = 0;
        mx = 0;
        mn = 256;
        tm = zeros(p*p);
        k = 1;
        for i=x-f:x+f
            for j=y-f:y+f
                if (i>0 && j>0) && (i<=m && j<=n)
                    sum = sum + i2(i,j)/(p*p);
                    mx = max(mx, i2(i, j));
                    mn = min(mn, i2(i, j));
                    tm(k) = i2(i, j);
                else
                    tm(k) = 0;
                end
                k = k + 1;
            end
        end
        tma = sort(tm);
        %average
        z(x, y) = ceil(sum);
        %max
        z1(x, y) = mx;
        %min
        z2(x, y) = mn;
        %median
        tp = ceil((p*p)/2);
        z3(x, y) = tma(tp);
    end
end
z = uint8(z)
z3 = uint8(z3)
subplot(2, 2, 1);
imshow(z)
title('Average Filtering')
subplot(2, 2, 2);
imshow(z1)
title('Max Filtering')
subplot(2, 2, 3);
imshow(z2)
title('Min Filtering')
subplot(2, 2, 4);
imshow(z3);
title('Median Filtering')
disp(f)
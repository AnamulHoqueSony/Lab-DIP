a = imread('A.jpg');
[rows,colums, depth] = size(a);
c = zeros(rows, colums);
for x = 1:rows
    for y = 1:colums
        c(x,y) = a(x,y);
        j = j+1;
    end
    i = i+1;
    j=1;
end
c = uint8(c);

hpMask = [-1 -1 -1;-1 8 -1;-1 -1 -1]/9;
hpfimg = imfilter(c, hpMask, 'same');

lpMask = [1 1 1;1 1 1;1 1 1]/9;
lpfimg = imfilter(c, lpMask, 'same');

figure
subplot(2, 2, 1)
imshow(a)
title('Original Color Image')
subplot(2, 2, 2)
imshow(c)
title('Grayscale Image')
subplot(2, 2, 3)
imshow(hpfimg);
title('High pass filtered Image');
subplot(2, 2, 4)
imshow(lpfimg);
title('Low pass filtered Image');
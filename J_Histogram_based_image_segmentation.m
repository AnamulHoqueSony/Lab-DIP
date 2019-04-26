I = imread('rice.jpg');
[row,col] = size(I);
c =zeros(row,col);
figure,imhist(I);
for i = 1:row
    for j = 1:col
        g = double (I(i,j));
        if g>100
            c(i,j) = g;
        else
            c(i,j) = 0;
        end
    end
end
figure,imshow(I);
figure,imshow(c);
        
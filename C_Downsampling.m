l = imread('A.jpg');
a = rgb2gray(l);
[rows,colums] = size(a);
i=1; j=1;
c = zeros(rows/2 , colums/2);
for x = 1:2:rows
    for y = 1:2:colums
         c(i,j) = a(x,y);
         j = j+1;
    end
    i = i+1;
    j=1;
end
figure,imshow(a);
figure,imshow(c/255) ;colormap(gray);
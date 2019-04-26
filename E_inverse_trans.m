l = imread('A.jpg');
a = rgb2gray(l);

r = size(a,1);
c = size(a,2);
na =zeros(r,c);
for i = 1:r
    for j = 1:c
        val =a(i,j);
        na(i,j) =255 - val;
    end
end

figure,imshow(a);
figure,imshow(na/255);
l = imread('A.jpg');
a = rgb2gray(l);

r = size(a,1);
c = size(a,2);
con = 1;
na =zeros(r,c);
for i = 1:r
    for j = 1:c
        val =double(a(i,j));
        na(i,j) =con*log10(val + 1);
    end
end

figure,imshow(a);
figure,imshow(na);
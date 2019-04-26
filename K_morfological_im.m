a = imread('rice.jpg');
%a = rgb2gray(a);
a=im2bw(a);

se = [1 1 1;1 1 1;1 1 1];
[r,c] = size(a);
tem = zeros(r+2,c+2);
for i = 2:r
    for j = 2:c
        tem(i,j) = a(i,j);
    end
end
ne = zeros(r,c); 
for i = 1:r-2
    for j = 1:c-2
        ma_square =tem(i:(i+2),j:(j+2));
        new_mat = ma_square.*se;
        ne(i+1,j+1) = max(max(new_mat));
      
    end
end

for i = 2:r
    for j = 2:c
        tem(i,j) = a(i,j);
    end
end
n = zeros(r,c); 
for i = 1:r-2
    for j = 1:c-2
        ma_square =tem(i:(i+2),j:(j+2));
        new_mat = ma_square.*se;
        n(i+1,j+1) = min(max(new_mat));
      
    end
end

imshow(a);
figure,imshow(a),title('orginal');
figure,imshow(ne),title('Dilation');
figure,imshow(n),title('erosion');



        
        

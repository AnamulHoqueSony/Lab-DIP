%%image addition
im_1 = imread('A.jpg');
im_2 = imread('B.jpg');

for m = 1:size(im_1,1)
    for n = 1:size(im_1,2)
       
        g(n,m) = im_1(n,m) + im_2(n,m);
    end
end
imshow(g);

%%image subtraction

im_1 = imread('A.jpg');
im_2 = imread('B.jpg');

for m = 1:size(im_1,1)
    for n = 1:size(im_1,2)
       
        g(n,m) = im_1(n,m) - im_2(n,m);
    end
end
imshow(g);

%%Normalization 

im = imread('A.jpg');

for m = 1:size(im,1)
    for n = 1:size(im,2)
      if im(m,n)>=50 && im(m,n)<=130
          tem_im(n,m) = im(n,m);
      else
          tem_im(n,m) = 0;
      end
    end
end

for m = 1:size(im,1)
    for n = 1:size(im,2)
          tem_im(n,m) = im(n,m) - 50;
    end
end

for m = 1:size(im,1)
    for n = 1:size(im,2)
          new_im(n,m) = (255/130)*tem_im(n,m) ;
    end
end

imshow(new_im);










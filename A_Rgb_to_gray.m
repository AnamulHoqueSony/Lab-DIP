pic = imread('oni.jpg');
imshow(pic);
for m = 1:size(pic,1)
    for n = 1:size(pic,2)
        gsc = .299*pic(m,n,1) + .59*pic(m,n,2) + .114*pic(m,n,3);
        p(m,n,:) = [gsc gsc gsc];
    end
end

imshow(p);

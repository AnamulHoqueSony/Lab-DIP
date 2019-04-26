I = imread('A.jpg');
a = rgb2gray(I);
da = double(a);
[r,c] = size(da);
ax = zeros(r-3,c-3);
maskx = [-1 -2 -1;0 0 0;1 2 1];
for ix = 1:(r-3)
    for jx = 1:(c-3)
        axsquare = da(ix:(ix+2),jx:(jx+2));
        res = maskx.*axsquare ;
        ax(ix,jx) =sum(sum(res)); 
    end
end
figure,imshow(ax);
ay = zeros(r-3,c-3);
masky = [-1 0 1;-2 0 2;-1 0 1];
for iy = 1:(r-3)
    for jy = 1:(c-3)
        aysquare = da(iy:(iy+2),jy:(jy+2));
        res = masky.*aysquare ;
        ay(iy,jy) = sum(sum(res)); 
    end
end
figure,imshow(ay);
cd = sqrt(ax.^2 + ay.^2);

figure,imshow(cd/255);

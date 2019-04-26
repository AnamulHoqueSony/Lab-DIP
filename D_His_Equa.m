l = imread('A.jpg');
a = rgb2gray(l);
r = size(a,1);
c = size(a,2);
ah = zeros(r,c);
n = r*c;
f = zeros(256,1);
pdf = zeros(256,1);
cdf = zeros(256,1);
cum = zeros(256,1);
out = zeros(256,1);



for i =1:r
    for j=1:c
        val =a(i,j);
        f(val+1) = f(val+1) + 1;
        pdf(val+1)= f(val+1)/n;
    end
end

sum =0;L=255;

for i=1:size(pdf)
    sum = sum + f(i);
    cum(i) = sum;
    cdf(i) = cum(i)/n;
    out(i) = round(cdf(i)*L);
end
for i =1:r
    for j=1:c
        ah(i,j) = out(a(i,j)+1);
    end
end
figure,imshow(a);
figure,imshow(ah/255);

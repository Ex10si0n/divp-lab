img = imread("avatar.png");
img = rgb2gray(img);

img = my_filter(img, [0.0625 0.125 0.0625; 0.125 0.25 0.125; 0.0625 0.125 0.25]);

res = laplacian_detector(img);

th = 10;
res(res>th) = 255;
res(res<th) = 0;

res = medium_filter(res);

imshow(res);
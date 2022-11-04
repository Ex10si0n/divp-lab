img = imread("../test-img/lena_color_256.tif");
V = sum(img, 3) / 3;
imshow(uint8(V))
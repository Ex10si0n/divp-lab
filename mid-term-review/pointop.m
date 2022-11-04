img1 = imread('1.tif');
img2 = imread("2.tif");

res = img_add(img1, img2);
imshow(res);
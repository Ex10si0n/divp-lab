function quantier()
    img = imread('../test-img/lena_gray_512.tif');
	img = floor(img / 32);
    unique(img)
	imshow(img, [0 7]);
	
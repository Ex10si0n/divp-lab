function monolize()
    img = imread('../test-img/lena_color_512.tif');
	img = double(img);
    % Luminance Image
	mono = uint8(0.299 * img(:,:,1) + 0.587 * img(:,:,2) + 0.114 * img(:,:,3));
	imshow(mono);


function channel_modifier()
    img = imread("../test-img/lena_color_512.tif");

    imshow(img)
    
    if length(size(img)) ~= 3
        return
    end

    img = double(img);
    img(:,:,1) = img(:,:,1) + 100;
    img(:,:,2) = img(:,:,2) + 100;
    img(:,:,3) = img(:,:,3) - 100;
	img(img > 255) = 255;
    img(img < 0) = 0;
    img = uint8(img);
    figure;imshow(img);s
end

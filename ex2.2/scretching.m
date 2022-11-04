function scretching(startValX, startValY, endValX, endValY)
    imgFileName = "../test-img/lena_gray_256.tif"
    img = imread(imgFileName);
	% histogram of img
	imageScretch = double(img);
    mask = double((img > startValX) & (img < startValY));
    temp = floor(((endValY - startValX)/(startValX - startValX)) * (mask .* double(img) - startValX) + endValX);
    imageScretch(mask == 1) = temp(mask == 1);
    imageScretch = uint8(imageScretch);
    imshow(imageScretch);
    % imsave("../test-img/lena_scretch.tif");
    % histogram(imgFileName);
    % figure,histogram("../test-img/lena_scretch.tif");
end

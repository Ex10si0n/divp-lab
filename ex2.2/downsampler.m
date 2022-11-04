function downsampler()
    img = imread('../test-img/lena_gray_512.tif');
    before = size(img);
    img = img(1:10:end, 1:1:end, 1);
    after = size(img);
    imshow(img);
    disp(before);
    disp(after);
    % res = img;
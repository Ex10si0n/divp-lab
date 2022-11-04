function im = readImg(name)
    img = readim("/Users/ex10si0n/Projects/MATLAB/DIVP-Lab/test-img/" + name);
    red = img(:,:,1);
    green = img(:,:,2);
    blue = img(:,:,3);
    subplot(2, 2, 1); imshow(img); title('original');
    subplot(2, 2, 2); imshow(red); title('red channel');
    subplot(2, 2, 3); imshow(green); title('green channel');
    subplot(2, 2, 4); imshow(blue); title('blue channel');
    % plot(0:255, hr, 'r', 0:255, hg, 'g', 0:255, hb, 'b');
    im = img;
end

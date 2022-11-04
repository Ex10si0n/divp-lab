function res = img_add(img1, img2)
    if size(img1) ~= size(img2)
        return
    end

    if length(size(img1)) ~= 3
        return
    end

    img1 = double(img1);
    img2 = double(img2);
    res = img1 + img2;
    res(res > 255) = 255;
    res = uint8(res);
end
function res = img_filter(img)

    if length(size(img)) ~= 2
        return
    end
    filter_size = 5;
    filter = ones(filter_size, filter_size) / (filter_size * filter_size);
    padding = (filter_size - 1) / 2;
    [r, c] = size(img);
    res = zeros(r + 2 * padding, c + 2 * padding);
    res(padding+1:r+padding, padding+1:c+padding) = double(img);
    
    for i = padding+1:r+padding
        for j = padding+1:c+padding
            res(i, j) = abs(sum(sum(res(i - padding : i + padding, j - padding : j + padding) .* filter)));
        end
    end
    
    res = res(padding+1:r+padding, padding+1:c+padding);
    res = round(res);
    res(res>255) = 255;
    res(res<0) = 0;
    res = uint8(res);
end
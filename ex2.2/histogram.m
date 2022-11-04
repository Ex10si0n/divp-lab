function hist = histogram(img)
	img = imread(img);
	[row, column, channel] = size(img);
	h = zeros(1, 256, channel);
	for g = 0:255
		h(1, g+1, :) = sum(sum(img == g, 1), 2);
	end

	if channel == 3
		plot(0:255, h(:, :, 1), 'r', 0:255, h(:, :, 2), 'g', 0:255, h(:, :, 3), 'b');
    else
		plot(0:255, h);
	end

	h = h / (row * column);
	hist = h;

end

img = imread('kim.png');
img = rgb2gray(img);
%img = 255 - img;
img(img<=200) = 0;
img(img>200) = 255;

tiledlayout(1,2)

nexttile;
imshow(img);
title('Original Image');
set(gca,'FontSize',20);

visited = zeros(size(img));
colored_fill = zeros([size(img), 3]) * 255;
res = 0;

for i = 1:size(img,1)
	for j = 1:size(img, 2)
		if img(i, j) == 0 && visited(i, j) == 0
			random_color = rand(1, 3) * 255;
			res = res + 1;
			visited(i, j) = 1;
			inbound = i - 1 > 0 && j - 1 > 0 && i + 1 <= size(img, 1) && j + 1 <= size(img, 2);
			directions = [1, 0; 0, 1; -1, 0; 0, -1];
			queue = [i, j];
			while size(queue) > 0
				corr = queue(1, :);
				queue(1, :) = [];
				x = corr(1);
				y = corr(2);
				img(x, y) = 127;
				colored_fill(x, y, 1) = random_color(1);
				colored_fill(x, y, 2) = random_color(2);
				colored_fill(x, y, 3) = random_color(3);
				for k = 1:4
					corrk = [x + directions(k, 1), y + directions(k, 2)];
					x1 = corrk(1);
					y1 = corrk(2);
					if inbound && img(x1, y1) == 0 && visited(x1, y1) == 0
						visited(x1, y1) = 1;
						queue = [queue; x1, y1];
					end
				end
            end
        end
	end
end

colored_fill = 255 - colored_fill;

nexttile;

imwrite(uint8(colored_fill), 'world_color.jpg','jpeg')
imshow(uint8(colored_fill));
title("flood fill: " + res + " chunks");
set(gca,'FontSize',20);

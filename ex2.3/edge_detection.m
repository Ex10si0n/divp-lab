img = imread('me.png');
h_edge_detector = [-1 -1 -1; 0 0 0; 1 1 1];
v_edge_detector = [-1 0 1; -1 0 1; -1 0 1];
img = medium_filter(img);

horizontal = my_filter(img, v_edge_detector);
vertical = my_filter(img, h_edge_detector);
result = (horizontal + vertical) / 2;
result(result > 30) = 255;
% result = medium_filter(result);
result(result < 30) = 0;
imshow(result);

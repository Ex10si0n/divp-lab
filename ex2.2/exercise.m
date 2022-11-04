function exercise()
    I = imread("../test-img/lena_gray_256.tif");
    
    % Display size
    ISize = size(I);
    disp(ISize);

    % Get logical matrix indicates the location of pixel with 65 value
    logMat = I==65;
    disp(logMat);

    % Count pixels with 65 value
    count = sum(I(logMat));
    disp(count);

    % Save the intensity value in h
    h(65 + 1) = sum(I==65);

    % Calculate the PDF of image I
    % PDF is normalized histogram
    pdf = h / 10000;
    

end
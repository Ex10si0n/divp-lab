function res = matrix_processor()
    A = rand(20, 10);
    B = A * 10;
    C = B(4,:) + A(2,:);
    plot(C, 'r--');
    res = C;
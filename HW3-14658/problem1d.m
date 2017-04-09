function  Problem1d(A, n, N)

    image = true(n*10,n*20);
    height = A/n;
    for i = 1:n
        for j = 1:2*n
            x = -A + ((2*j-1) * height) / 2;
            y = ((2*i-1) * height) / 2;
            temp = 0;
            for m = 1:N
                if sqrt((x-1)^2+y^2) < 0.5
                    temp = 1;     % indicator to fill colour
                    break;
                end
                x = x + x/(2 * (x^2 + y^2));
                y = y/2 - y/(2 * (x^2 + y^2));
            end
            if temp == 1
                image(n*10 - (i)*10 + 1:n*10 - (i-1)*10, (j-1)*10 + 1:10*j) = false;
            end
        end
    end
    figure,imshow(image)

end

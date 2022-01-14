function img_out = Dilation(img_in, SE)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[m,n] = size(img_in);
img_out = zeros(m,n);

for a = 1:m
    for b = 1:n
        %fprintf("\n\n MADE IT INTO INNER LOOP \n\n");
        %fprintf("\n a = %d, b = %d\n", a,b);
        [im, SEb] = superpose(img_in, SE, [a,b]);
        num = overlap(im, SEb);
        if (num > 0)
            img_out(a,b) = 1;
        end
    end
end

end


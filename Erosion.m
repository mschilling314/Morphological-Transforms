function img_out = Erosion(img_in,SE)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[m,n] = size(img_in);
img_out = zeros(m,n);
count_needed = overlap(SE,SE);
%fprintf("m = %d, n = %d \n", m, n);

for a = 1:m
    for b = 1:n
        %fprintf("\n\n MADE IT INTO INNER LOOP \n\n");
        %fprintf("\n a = %d, b = %d\n", a,b);
        [im, SEb] = superpose(img_in, SE, [a,b]);
        num = overlap(im, SEb);
        if (num == count_needed)
            img_out(a,b) = 1;
        end
    end
    %fprintf("a = %d finished the inner loop \n", a);
end
%fprintf("reached end of both loops\n");

end


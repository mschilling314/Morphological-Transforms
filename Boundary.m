function img_out = Boundary(img_in, SE)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
img_out = img_in - Erosion(img_in, SE);
end


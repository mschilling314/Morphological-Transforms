function img_out = Opening(img_in, SE)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
img_out = Erosion(img_in, SE);
img_out = Dilation(img_out, SE);
end


function img_out = Closing(img_in, SE)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
img_out = Dilation(img_in, SE);
img_out = Erosion(img_out, SE);
end


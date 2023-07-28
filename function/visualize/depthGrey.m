function output = depthGrey(depth_data)
%DEPTHGREY Summary of this function goes here
%   Detailed explanation goes here

v_max = max(depth_data(:));
v_min = min(depth_data(:));

greyscaled= 255/(v_max-v_min)*depth_data;
n_min = min(greyscaled(:));
n_max = max(greyscaled(:));

imshow(greyscaled, [uint8(n_min), uint8(n_max)])
clim([n_min,n_max]);

output = greyscaled;
end


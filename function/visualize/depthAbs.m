function output = depthAbs(depth_data, num)
%change SS data into 'Colored depth image'
%Input: depth_data format [SS]
%Output: RGB_data format [SSC] channel=3

color_map = jet(256);
n_max = max(num);
n_min = min(0);

depth_data_colored = ind2rgb(uint8(256*(depth_data - n_min)/(n_max - n_min)), color_map);

imshow(depth_data_colored)
clim([n_min,n_max]);

output = depth_data_colored;
end


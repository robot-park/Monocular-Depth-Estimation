function output_RGB = resize_3C(input_RGB, target_size)
%RESIZE_RGB Summary of this function goes here
%   Detailed explanation goes here

[numImages, ~, ~, numChannels] = size(input_RGB);
output_RGB = zeros(numImages, target_size, target_size, numChannels);
for i = 1:numImages
    for j = 1:numChannels
        temp = imresize(squeeze(input_RGB(i, :, :, j)), [target_size, target_size]);
        output_RGB(i,:,:,j)=im2double(temp);
    end
end

clear temp
end


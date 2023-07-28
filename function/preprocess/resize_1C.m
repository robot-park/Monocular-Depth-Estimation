function output_DEP = resize_1C(input_DEP, target_size)
%RESIZE_RGB Summary of this function goes here
%   Detailed explanation goes here

[numImages, ~, ~] = size(input_DEP);

output_DEP = zeros(numImages, target_size, target_size); % double type 생성되어버림

for i = 1:numImages
    temp = imresize(squeeze(input_DEP(i, :, :)), [target_size, target_size]);
    output_DEP(i,:,:)=temp;
end 
clear temp

end


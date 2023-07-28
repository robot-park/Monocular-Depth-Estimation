dataset = load('dataset/nyu_depth_v2_labeled.mat');
RGB = permute(dataset.images,[4,1,2,3]); % 1449 480 640 3 uint8
DEP = permute(dataset.depths,[3,1,2]);  % 1449 480 640 single
target_size = 384;
dataset_RGB = resize_3C(RGB,target_size);
dataset_DEP = resize_1C(DEP,target_size);
clear dataset RGB DEP target_size

%save()
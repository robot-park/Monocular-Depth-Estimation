function output = colorLAB(input, max)

input = squeeze(input);


n_max = max;
n_min = 1;

color_map = jet(256);

LABS = ind2rgb(uint8(256*(input - n_min)/(n_max - n_min)), color_map);

imshow(LABS)
output = LABS;
end


function out = reshapePatchEmbedding(in)
% Remove output embedding corresponding to class token from input
out = in(2:end,:,:);
% Reshape resulting embedding to input format
WH = sqrt(size(out, 1));
C = size(out, 2);
out = reshape(out, WH, WH, C, []); % Shape is W x H x C x N
out = permute(out, [2, 1, 3, 4]); % Shape is H x W x C x N
% Convert to formatted dlarray
out = dlarray(out, 'SSCB');
end
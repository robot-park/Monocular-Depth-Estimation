function [X,T1,T2] = preprocessData(dataX,dataT1)

% Extract image data from cell and concatenate
X = cat(4,dataX{:});
% Extract depth data from cell and concatenate
T1 = cat(3,dataT1{:});

end
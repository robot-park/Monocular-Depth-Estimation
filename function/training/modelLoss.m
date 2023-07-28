function [loss, RMSE, gradients, state] = modelLoss(net,X,T,custom_Learnables)

[Y, state] = forward(net,X,Outputs=("Relu_293"));

%% Calculate Depth Loss
Y = squeeze(Y); T=squeeze(T);

mae = mean(abs(Y - T));
mae_loss = mean(mae(:));
mse_loss = mse(Y, T);

loss = mae_loss;

predict_depth = Y(150,150,1);
real_depth = T(150,150,1);

disp("real_depth: "+num2str(real_depth)+" predict_depth: "+num2str(predict_depth))

RMSE = rmse(Y, T, "all");

clear Y T

%% Compute gradients only for unfrozen learnable layer
gradients = dlgradient(loss, custom_Learnables);

end
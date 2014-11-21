function [ image ] = edge_detect( img, Xmask, Ymask)


imageX = conv2(img, Xmask);
imageY = conv2(img, Ymask);

image = sqrt(imageX.^2 + imageY.^2);


end


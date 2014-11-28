function [ image ] = remove_noise( image, mask )

image = conv2(image, mask, 'same');

end


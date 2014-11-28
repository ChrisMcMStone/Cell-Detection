function image = convert2binary( img )

img = uint8(img);

image = im2bw(img, 0.1);

end


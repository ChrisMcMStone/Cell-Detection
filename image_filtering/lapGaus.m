function image = lapGaus(img, gausF, laplF)

img = conv2(img, gausF);
img = conv2(img, laplF);

img = edge(img, 'zerocross');
image = imcomplement(img);

end


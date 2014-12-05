function image = lapGaus(img, gausF, laplF)

img = conv2(img, gausF);
img = conv2(img, laplF);

image = edge(img, 'zerocross');

end


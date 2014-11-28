function image = format_image(base_dir, file) 

% read_image(base_dir, file) - reads a gif file from the directory base_dir
%                        base_dir should be a string, and if it is the
%                        current directory it should be ''

img = imread([base_dir, file]);

img = rgb2gray(img);

image = double(img);

end


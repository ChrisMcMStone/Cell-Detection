function m = testFilterEffect(fileName, noiseMask, edgeMaskX, edgeMaskY, groundTruth )

cells = format_image('', fileName);
cellsNoise = remove_noise(cells, noiseMask);
cellEdge = edge_detect(cellsNoise, edgeMaskX, edgeMaskY);
binary = convert2binary(cellEdge);
gTruth = imread(groundTruth);
m = roc_analysis(gTruth, binary);

end
function m = threshold(fileName, noiseMask, edgeMaskX, edgeMaskY, groundTruth)

cells = format_image('', fileName);
cellsNoise = remove_noise(cells, noiseMask);
gTruth = imread(groundTruth);

thresholdArray = 0:10:60;

cellEdgeArray = [0:10:60; 0:10:60; 0:10:60];
x=1;

for i = 1:numel(thresholdArray)
        edge = (edge_detect(cellsNoise, edgeMaskX, edgeMaskY)) > thresholdArray(i);
        if(i == 1) show_image(edge); end
        roc = roc_analysis(gTruth, edge);
        cellEdgeArray(x) = roc(1);
        cellEdgeArray(x+1) = roc(2);
        cellEdgeArray(x+2) = thresholdArray(i);
        x = x+3;
end


m = cellEdgeArray;
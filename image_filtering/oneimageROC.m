function avg = oneimageROC( image, groundTruth, noiseMask, edgeMaskX, edgeMaskY, thresholdArray )

all = [];


newRow = threshold(image{1}, noiseMask, edgeMaskX, edgeMaskY, groundTruth{1}, thresholdArray);

avg = newRow;
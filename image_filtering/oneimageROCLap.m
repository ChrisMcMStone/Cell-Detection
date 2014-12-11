function avg = oneimageROCLap( imageArray, groundTruthArray, noiseMask, lapFilter )


        newRow = thresholdLap(imageArray{1}, noiseMask, lapFilter, groundTruthArray{1});



avg = newRow;
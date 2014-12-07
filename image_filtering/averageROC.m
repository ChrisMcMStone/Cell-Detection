function avg = averageROC( imageArray, groundTruthArray, noiseMask, edgeMaskX, edgeMaskY )

all = [];


for i = 1:numel(imageArray)
        newRow = threshold(imageArray{i}, noiseMask, edgeMaskX, edgeMaskY, groundTruthArray{i});
        all = [all, newRow];
end


avgArray = [0:10:60; 0:10:60; 0:10:60];

y= 0;
for x = 1:(numel(imageArray)*7)
        if (mod(x, 3) == 0) 
            avgArray(x) = y;
            y = y + 10;
        else
        avgArray(x) = (all(x) + all(x + 21) + all(x + 42)) / 3;
        end
end


avg = avgArray;
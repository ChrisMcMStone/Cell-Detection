function m = roc_analysis(groundTruthImage, testImage)
%UNTITLED ROC analysis of two images of same dimension (and format)
%  This function takes in two images, of the same dimensions (making it the
%  users responsibilty to trim the images to the correct size and also to
%  ensure that they are the correct format. This function will work best
%  when both images are binary. eg, the values in them are either a black
%  pixel or a white pixel, as this gives a more definitive reading

trueNegatives = 0;
truePositives = 0;
falseNegatives = 0;
falsePositives = 0;


for i = 1:numel(groundTruthImage)
    if(testImage(i) == 1) %If we have a positive ie an Edge
        if(groundTruthImage (i) == 255)
            truePositives = truePositives + 1; %If the ground truth also has an edge then it is a true positive
        else
            falsePositives = falsePositives +1;%Otherwise the ground truth doesn't have an edge, meaning it is a false positive
        end    
    else %Else we have a negative no edge
        if(groundTruthImage(i) == 0);
            trueNegatives = trueNegatives +1;%If the ground truth also has no edge then it is a true negative
        else
            falseNegatives = falseNegatives + 1;%Otherwise the ground truth has an edge where the image doesnt! False negative
        end
    end   
end

specificity = trueNegatives/(trueNegatives + falsePositives);
sensitivity = truePositives/(truePositives + falseNegatives);

m = [sensitivity specificity];
end


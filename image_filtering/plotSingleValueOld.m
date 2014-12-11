function m = plotSingleValue(rocmatrix) 
%Plot a single set of values that have been returned by doing RoC Analysis
%Function receives a matrix of the values that can be gained by evaluating
%the roc values. 

clear title xlabel ylabel;
xLabel = '1 - Specificity';
yLabel = 'Sensitivity';
titleA = 'ROC Analysis on Edge Filters';
labels = [0:10:60 ];
xVals = [0:10:60];
yVals = [0:10:60];

x = 1;
baseX = [0:1];
baseY = baseX;

for i =  1:numel(labels)
    yVals(i) = rocmatrix(x);
    xVals(i) = rocmatrix(x+1);
    labels(i) = rocmatrix(x+2);
    x = x+3;
end

xVals = 1-xVals;

P =  plot(xVals,yVals,'-ob',baseX,baseY,'--r'), xlabel(xLabel), ylabel(yLabel),title(titleA)

m = 'done';




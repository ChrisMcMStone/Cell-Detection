function m = plotSingleValue(simple, roberts, sobel, lapofg) 
%Plot a single set of values that have been returned by doing RoC Analysis
%Function receives a matrix of the values that can be gained by evaluating
%the roc values. 

clear title xlabel ylabel;
xLabel = '1 - Specificity';
yLabel = 'Sensitivity';
titleA = 'ROC Analysis on Edge Filters';
labels = [0:10:60];

xValsSimple = [0:10:60];
yValsSimple = [0:10:60];

xValsRoberts = [0:10:60];
yValsRoberts = [0:10:60];

xValsSobel = [0:10:60];
yValsSobel = [0:10:60];

xValsLog = [0:10:60];
yValsLog = [0:10:60];

x = 1;
baseX = [0:1];
baseY = baseX;

for i =  1:numel(labels)
    yValsSimple(i) = simple(x);
    xValsSimple(i) = simple(x+1);
    xValsRoberts(i) = roberts(x);
    yValsRoberts(i) = roberts(x+1);
    yValsSobel(i) = sobel(x);
    xValsSobel(i) = sobel(x+1);
    yValsLog(i) = lapofg(x);
    xValsLog(i) = lapofg(x+1);
    x = x+3;
end

xValsSimple = 1-xValsSimple;
xValsRoberts = 1-xValsRoberts;
xValsSobel = 1-xValsSobel;
xValsLog = 1-xValsLog;



P =  plot(xValsSimple,yValsSimple,'-ob',xValsRoberts,yValsRoberts,'-+g', xValsSobel,yValsSobel,'-*c',xValsLog,yValsLog,'-dm', baseX,baseY,'--r'), xlabel(xLabel), ylabel(yLabel),title(titleA)

legend('simple', 'roberts', 'sobel', 'LoG', 'No determination', 'Location', 'southeast')
m = 'done';



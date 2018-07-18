close all;
clear all;

analyzeData=xlsread('data.xls');

Images=analyzeData(:,2)';
ImagesAver=sum(Images)/size(Images,2);

Accuracy1=analyzeData(:,3)';
Accuracy2=analyzeData(:,4)';
AccuracyDifference=Accuracy2-Accuracy1;

Time1=analyzeData(:,5)';
Time2=analyzeData(:,6)';
TimeDifference=Time2-Time1;

averAccuracy=mean(AccuracyDifference);
averTime=mean(TimeDifference);

percentageAccuracy=((Accuracy2-Accuracy1)./Accuracy1).*100;
percentageTime=((Time2-Time1)./Time1).*100;

Plot;
disp('Average Accuracy Percentage is: ');
disp(mean(percentageAccuracy));
disp('Average Time Percentage is: ');
disp(mean(percentageTime));
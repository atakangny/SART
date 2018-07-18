imagePoint=imagePoint(imagePoint>0);
averageImagePoint=mean(imagePoint);

dataToSave=[ParticipantID,averageImagePoint,accuracy1,accuracy2,averageTime1,averageTime2];
excellDatas=xlsread('data.xls');
for i=1:size(excellDatas,1)
    if excellDatas(i,1)==ParticipantID
        dataToSave=[];
    end
end
excellDatas=[excellDatas;dataToSave];
xlswrite('data.xls',excellDatas);
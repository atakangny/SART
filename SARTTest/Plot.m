figure
y=Images;
x=1:size(y,2);
averIm=mean(Images);
plot(x,y,'b:',x,y,'bo',[x(1),x(size(y,2))],[averIm,averIm],'r-','LineWidth',1.5,'MarkerSize',6,'MarkerEdgeColor','b','MarkerFaceColor',[0.7,0.7,0.7]);
xlabel('Participant');
ylabel('Image Points');
title('Graph of the image points');

figure
y=percentageAccuracy;
z=percentageTime;
x=1:size(y,2);
plot(x,y,'b-',x,y,'bo',x,z,'r-',x,z,'ro','LineWidth',1.5,'MarkerSize',6,'MarkerFaceColor',[0.7,0.7,0.7]);
xlabel('Participant');
ylabel('Red :Time percentage      Blue :Accuracy Percentage');
title('Graph of Time and Accuracy Percentages');

figure
y=Time1;
z=Time2;
x=1:size(y,2);
m1=mean(Time1);
m2=mean(Time2);
mMin=1;
mMax=size(Time1,2);
plot(x,y,'b-',x,y,'bo',x,z,'r-',x,z,'ro','LineWidth',1.5,'MarkerSize',6,'MarkerFaceColor',[0.7,0.7,0.7]);
hold on;
plot([mMin mMax], [m1,m1],'.b:',[mMin mMax], [m2,m2],'.r:')
xlabel('Participant');
ylabel('Red :Time After    Blue :Time Before');
title('Graph of the Before-After Time');

figure%öncekiyle ayný þekli deðiþik
y=[];
for i=1:size(Accuracy1,2)
    y=[y;Time1(i),Time2(i)];
end
bar(x,y);
b=bar(y);
b(2).FaceColor=[0.2,0.2,1];
b(2).EdgeColor=[0.5,0.5,0.5];
b(1).FaceColor=[1,0.2,0.2];
b(1).EdgeColor=[0.5,0.5,0.5];
xlabel('Participant');
ylabel('Red :Time Before    Blue :Time After');
title('Graph of the Before-After Time');

%bu satýrdan sonrakini kolonlu yap çizgili yerine
figure
y=[];
for i=1:size(Accuracy1,2)
    y=[y;Accuracy1(i),Accuracy2(i)];
end
bar(x,y);
b=bar(y);
b(2).FaceColor=[0.8,0.8,0.8];
b(2).EdgeColor=[0,0,0];
b(1).FaceColor=[0,0,0];
b(1).EdgeColor=[0.8,0.8,0.8];
xlabel('Participant');
ylabel('Black :Accuracy Before    Grey :Accuracy After');
title('Graph of the Before-After Accuracy');

figure
subplot(2,1,1);
y=percentageAccuracy;
z=percentageTime;
k=Images;
x=1:size(y,2);
plot(x,y,'b-',x,y,'bo',x,z,'r-',x,z,'ro','LineWidth',1.5,'MarkerSize',6,'MarkerFaceColor',[0.7,0.7,0.7]);
xlabel('Participant');
ylabel('Red : %Accuracy  Blue : %Time');
title('Graph of the Accuracy and Time Percentages');
subplot(2,1,2);
plot(x,k,'b:',x,k,'bo','LineWidth',1.5,'MarkerSize',6,'MarkerFaceColor',[0.7,0.7,0.7]);
xlabel('Participant');
ylabel('Image Points');
title('Graph of the Image Points');

figure
stem3(percentageAccuracy,percentageTime,Images,':bo','filled','MarkerFaceColor',[0.7 0.7 0.7] );
xlabel('%Accuracy');
ylabel('%Time');
zlabel('ImagePoint');
title('Graph of the Image Points, %Accuracy and %Time');


%PLOTLAR, PARAMETRELER,GGWP
%++++++++++++++image points
%++++++++++++++zaman accuracy yüzdelerini ayný plotta
%++++++++++++++zaman 1 zaman 2 yi bir plotta
%+++++++++++++++acc 1 acc 2 yi bir plotta
%++impoint accuracy
%++impoint time





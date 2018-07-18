close all; %ger�ek
clear all;
sca
Screen('Preference', 'SkipSyncTests', 1);
PsychDefaultSetup(2);
screens = Screen('Screens');
screenNumber = max(screens);

Parameters;

[window, windowRect] = PsychImaging('OpenWindow', screenNumber, [0,0,0]);
Screen('BlendFunction', window, 'GL_SRC_ALPHA', 'GL_ONE_MINUS_SRC_ALPHA');
Screen('Preference','TextEncodingLocale', '.28599');
Screen('TextSize', window,30);
Screen('TextFont', window, 'Courier');

getImages;
getID;

DrawFormattedText(window, ['Test 3 b�l�mden olu�maktad�r.',...
    '\n\n Birinci b�l�mde 8 geldi�inde beklemeniz',...
    '\n\n di�er say�lar geldi�inde ise olabildi�ince h�zl�','\n\n bir �ekilde Space e basman�z beklenmektedir',...
    '\n\n �kinci b�l�mde resimlere dikkatinizi vermeniz ve','\n\n sonras�nda da puanlaman�z beklenmektedir',...
    '\n\n ���nc� b�l�m birinci b�l�mle ayn�d�r','\n\nDevam etmek i�in bir tu�a bas�n�z.'],'center', 'center', [1,1,1]);
Screen('Flip', window);
KbStrokeWait();

ExampleSart;

Screen('TextSize', window,30);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window,['�imdi ger�ek teste ba�l�yoruz.','\n\nDevam etmek i�in bir tu�a bas�n�z'],'center', 'center', [1,1,1]);
Screen('Flip', window);
WaitSecs(2);
KbStrokeWait();

Screen('TextSize', window, 300);
Screen('TextFont', window, 'Courier');
for i=1:sartLength
    Screen('Flip', window);
    WaitTicks(4);
    shownValue=randi([0,9],1,1);
    DrawFormattedText(window, shownValue+48, 'center', 'center', [1,1,1]);
    Screen('Flip', window);
    if(shownValue~=choosenNumber)
        beginTime1=GetSecs;
        [SystemSecs,keyCode]=KbWait([],2,GetSecs+3);
        actualTime1(i)=SystemSecs-beginTime1;
    else
        [SystemSecs,keyCode]=KbWait([],2,GetSecs+3);
        if sum(sum(keyCode))>0
            eightFalseCounter1=eightFalseCounter1+1;
        end
        eightCounter1=eightCounter1+1;
    end
end
Screen('Flip', window);

actualTime1=actualTime1(actualTime1>0);%sekiz geldi�indeki s�f�rlar� siler
averageTime1=sum(actualTime1)/size(actualTime1,2);
if eightCounter1==eightFalseCounter1
    accuracy1=0;
else
    accuracy1=((eightCounter1-eightFalseCounter1)/eightCounter1)*100;
end
dispPictures;
Screen('TextSize', window, 300);
Screen('TextFont', window, 'Courier');
for i=1:sartLength
    Screen('Flip', window);
    WaitTicks(4);
    shownValue=randi([0,9],1,1);
    DrawFormattedText(window, shownValue+48, 'center', 'center', [1,1,1]);
    Screen('Flip', window);
    if(shownValue~=choosenNumber)
        beginTime2=GetSecs;
        [SystemSecs,keyCode]=KbWait([],2,GetSecs+3);
        actualTime2(i)=SystemSecs-beginTime2;
    else
        [SystemSecs,keyCode]=KbWait([],2,GetSecs+3);
        if sum(sum(keyCode))>0
            eightFalseCounter2=eightFalseCounter2+1;
        end
        eightCounter2=eightCounter2+1;
    end
end

Screen('Flip', window);

actualTime2=actualTime2(actualTime2>0);%se�ili say� geldi�indeki s�f�rlar� siler
averageTime2=sum(actualTime2)/size(actualTime2,2);
if eightCounter2==eightFalseCounter2
    accuracy2=0;
else
    accuracy2=((eightCounter2-eightFalseCounter2)/eightCounter2)*100;
end

Screen('TextSize', window,30);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window,['Testimiz bitmi�tir.','\n\nKat�ld���n�z i�in te�ekk�r ederiz'],'center', 'center', [1,1,1]);
Screen('Flip', window);
WaitSecs(5);
data;
sca;

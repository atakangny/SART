close all; %gerçek
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

DrawFormattedText(window, ['Test 3 bölümden oluþmaktadýr.',...
    '\n\n Birinci bölümde 8 geldiðinde beklemeniz',...
    '\n\n diðer sayýlar geldiðinde ise olabildiðince hýzlý','\n\n bir þekilde Space e basmanýz beklenmektedir',...
    '\n\n Ýkinci bölümde resimlere dikkatinizi vermeniz ve','\n\n sonrasýnda da puanlamanýz beklenmektedir',...
    '\n\n Üçüncü bölüm birinci bölümle aynýdýr','\n\nDevam etmek için bir tuþa basýnýz.'],'center', 'center', [1,1,1]);
Screen('Flip', window);
KbStrokeWait();

ExampleSart;

Screen('TextSize', window,30);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window,['Þimdi gerçek teste baþlýyoruz.','\n\nDevam etmek için bir tuþa basýnýz'],'center', 'center', [1,1,1]);
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

actualTime1=actualTime1(actualTime1>0);%sekiz geldiðindeki sýfýrlarý siler
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

actualTime2=actualTime2(actualTime2>0);%seçili sayý geldiðindeki sýfýrlarý siler
averageTime2=sum(actualTime2)/size(actualTime2,2);
if eightCounter2==eightFalseCounter2
    accuracy2=0;
else
    accuracy2=((eightCounter2-eightFalseCounter2)/eightCounter2)*100;
end

Screen('TextSize', window,30);
Screen('TextFont', window, 'Courier');
DrawFormattedText(window,['Testimiz bitmiþtir.','\n\nKatýldýðýnýz için teþekkür ederiz'],'center', 'center', [1,1,1]);
Screen('Flip', window);
WaitSecs(5);
data;
sca;

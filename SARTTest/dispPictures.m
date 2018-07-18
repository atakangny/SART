Screen('TextSize', window, 20);
Screen('TextFont', window, 'Ariel');
drawBeginTime=GetSecs;
while 1
    CurrentTime=GetSecs;
    timeWaited=CurrentTime-drawBeginTime;
    
    if timeWaited>7
        break;
    else
        timeRemaining=num2str(7-floor(timeWaited));    
        DrawFormattedText(window, ['Lütfen gösterilen sahnelere' '\n\n dikkatinizi veriniz, sonrasýnda puanlayýnýz' '\n\n' timeRemaining], 'center','center', [1,1,1]);
        Screen('Flip', window);
    end
end

for i=1:totalImageNumber
    imageTexture = Screen('MakeTexture', window, images{i});
    Screen('DrawTexture', window, imageTexture);
    Screen('Flip', window);
    WaitSecs(7);
    while 1
        DrawFormattedText(window, ['Gösterilen sahneye dikkatimi verdiðimi hissediyorum' '\n\n (Hiç)1   2   3   4   5   6   7   8   9(Çok Fazla)'], 'center','center', [1,1,1]);
        Screen('Flip', window);
        [~, keyCode] = KbStrokeWait();
        if sum(keyCode)>1
            continue;
        end
        asciiEq=find(keyCode>0.5);
        stringEq=asciiEq-48;
        if stringEq<10 && stringEq>0
            imagePoint(i)=stringEq;
            break;
        end
    end
end

drawBeginTime=GetSecs;
while 1
    CurrentTime=GetSecs;
    timeWaited=CurrentTime-drawBeginTime;
    
    if timeWaited>7
        break;
    else
        timeRemaining=num2str(7-floor(timeWaited));    
        DrawFormattedText(window, ['Lütfen 8 geldiðinde bekleyiniz' '\n\n diðer rakamlarý gördüðünüzde space e basýnýz' '\n\n' timeRemaining], 'center','center', [1,1,1]);
        Screen('Flip', window);
    end
end

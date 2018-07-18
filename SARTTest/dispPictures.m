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
        DrawFormattedText(window, ['L�tfen g�sterilen sahnelere' '\n\n dikkatinizi veriniz, sonras�nda puanlay�n�z' '\n\n' timeRemaining], 'center','center', [1,1,1]);
        Screen('Flip', window);
    end
end

for i=1:totalImageNumber
    imageTexture = Screen('MakeTexture', window, images{i});
    Screen('DrawTexture', window, imageTexture);
    Screen('Flip', window);
    WaitSecs(7);
    while 1
        DrawFormattedText(window, ['G�sterilen sahneye dikkatimi verdi�imi hissediyorum' '\n\n (Hi�)1   2   3   4   5   6   7   8   9(�ok Fazla)'], 'center','center', [1,1,1]);
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
        DrawFormattedText(window, ['L�tfen 8 geldi�inde bekleyiniz' '\n\n di�er rakamlar� g�rd���n�zde space e bas�n�z' '\n\n' timeRemaining], 'center','center', [1,1,1]);
        Screen('Flip', window);
    end
end

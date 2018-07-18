
Screen('TextSize', window,30);
Screen('TextFont', window, 'Courier');
str_number='';
    DrawFormattedText(window, 'Enter your ID: ', 'center', 'center', [1,1,1]);
    Screen('Flip', window);
while 1
 [~, keyCode]=KbWait();
 key=find(keyCode>0);
 if sum(keyCode)>1
     continue;
 end
if keyCode(13)==1
    break;
elseif key>47 && key<58
    str_key=char(key);
    str_number=[str_number,str_key];    
    DrawFormattedText(window, ['Enter your ID: ',str_number], 'center', 'center', [1,1,1]);
    Screen('Flip', window);
elseif keyCode(8)==1
    str_number=str_number(1,1:size(str_number,2)-1);
    DrawFormattedText(window, ['Enter your ID: ',str_number], 'center', 'center', [1,1,1]);
    Screen('Flip', window);
end
WaitSecs(0.15);
end
ParticipantID=str2num(str_number);
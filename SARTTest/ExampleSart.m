DrawFormattedText(window,['�imdi ilk b�l�m�n bir �rne�ini yapal�m.','\n\nDevam etmek i�in bir tu�a bas�n�z'],'center', 'center', [1,1,1]);
Screen('Flip', window);
KbStrokeWait();
Screen('TextSize', window, 300);
Screen('TextFont', window, 'Courier');
for i=1:exampleSartLength
    Screen('Flip', window);
    WaitTicks(4);
    shownValue=randi([0,9],1,1);
    DrawFormattedText(window, shownValue+48, 'center', 'center', [1,1,1]);
    Screen('Flip', window);
    KbWait([],2,GetSecs+3);
end

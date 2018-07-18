    disp('Sart Test Programýna Hoþgeldiniz');
while 1    
    disp('Teste baþlamak için 1e basýn');
    disp('Sonuçlarý görmek için 2ye basýn');
    disp('Çýkmak için 3e basýn');
    prompt=' ';
    command=input(prompt,'s');
    if command=='1'
        Sart;        
    elseif command=='2'
        Results;        
    elseif command=='3'
        break;
    end   
end
close all;
clear all;
%baþa yada yan scriptlerin sonuna close all clear all ekle variable larý silmek için mainde
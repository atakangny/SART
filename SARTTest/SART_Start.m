    disp('Sart Test Program�na Ho�geldiniz');
while 1    
    disp('Teste ba�lamak i�in 1e bas�n');
    disp('Sonu�lar� g�rmek i�in 2ye bas�n');
    disp('��kmak i�in 3e bas�n');
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
%ba�a yada yan scriptlerin sonuna close all clear all ekle variable lar� silmek i�in mainde
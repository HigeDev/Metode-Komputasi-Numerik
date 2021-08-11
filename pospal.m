%% Program Metode Penyelesaian persamaan nonlinier - Metode Posisi palsu
%
% Program Metode bagi dua ini dimodifikasi oleh MZA math.Lectures Youtube Channel
% 
%
% Input
% fungsi non linier yang didefinisikan dalam mfile f.m
% batas atas dan batas bawah
% galat toleransi
%
% Output
% iterasi, solusi dan galat
% 


disp('  Metode posisi palsu')
disp('Tekan Enter untuk lanjut')
pause
clc
f=input('Fungsi f:');
a=input('Masukkan batas bawah :');
b=input('Masukkan batas atas :');
galat1=input('Masukkan galat Toleransi :');
ya=feval(f,a) ;  %Nilai f(a)
yb=feval(f,b);
iter=0;
xm1=a;
galat=abs((b-a)/b);
while ya*yb>0
    disp('Ingat f(a)*f(b)>0, berarti tidak ada akar dalam selang'),
    break,
end
fprintf('\n     iterasi       a            b            xm            f(xm)           Galat\n');
while galat>galat1
    iter=iter+1;
    xm=b-((yb*(b-a))/(yb-ya));
    yxm=feval(f,xm);
    a1=a;b1=b;    % Inisialisasi untuk Tampilan
    while yxm==0, break,
    end
    if ya*yxm<0
        b=xm;
        yb=yxm;
    else
        a=xm;
        ya=yxm;
    end;
    galat=abs((xm-xm1)/xm);
    xm1=xm;
    fprintf('%10.0f   %6.10f   %6.10f   %6.10f    %6.10f   %6.10f\n',[iter;a1;b1;xm;yxm;galat])
end
fprintf('Akarnya adalah = %6.10f\n',xm)

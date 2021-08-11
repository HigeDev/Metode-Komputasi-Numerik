%% Program Metode GAUSS SEIDEL
%
% Program Metode Jacobi ini dimodifikasi oleh MZA math.Lectures Youtube Channel
% 
%
% Input
% matriks A dan vektor kolom B
% iterasi maksimal, nilai awal dan galat toleransi 
% Output
%
% solusi dari SPL AX=B

%% 




clear
clc
disp('  METODE GAUSS SEIDEL  ')
disp(' Press Enter to continue ')
pause
clc

%%
A=input('masukkan matriks A yang akan diproses (Beri []) :');
B1=input('Masukkan vektor B yang akan diproses (Beri []):');
Y=input('Masukkan X0 hampiran awal (Beri []):');
delta=input('masukkan Toleransi  :');
max1=input('Masukkan iterasi maksimal:');
B=B1';
N=length(B);
P=Y';
X1=Y';
iter=0;
fprintf('\n         Iterasi          x1               x2              x3           x4 \n');
for k=1:max1
    iter=iter+1;
   for j=1:N
    if j==1
        X(1)=(B(1)-A(1,2:N)*P(2:N))/A(1,1);
    elseif j==N
	     X(N)=(B(N)-A(N,1:N-1)*(X(1:N-1))')/A(N,N);
    else
        X(j)=(B(j)-A(j,1:j-1)*X(1:j-1)'-A(j,j+1:N)*P(j+1:N))/A(j,j);
    end
end
galat=max(abs((X'-P)./X')); 
P=X';
      if (galat<delta)
     break
   end
fprintf('%11.0f  %4.10f   %4.10f  %4.10f   %4.10f\n', [iter;X(1);X(2);X(3);X(4)] )
end
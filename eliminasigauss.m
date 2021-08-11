clc;
clear;
disp('Solusi dari persamaan: x + y + 2z = 9')
disp(' 2x+4y - 3z = 1')
disp(' 3x+6y - 5z = 0')
disp('Menggunakan Metode Eliminasi Gauss')
A=[1 1 2 9;2 4 -3 1;3 6 -5 0]
disp('Baris 2 = -2 kali Baris 1 + Baris 2')
A(2,:)=-2*A(1,:)+A(2,:)
disp('Baris 3 = -3 kali Baris 1 + Baris 3')
A(3,:)=-3*A(1,:)+A(3,:)
disp('Baris 2 = Baris 2 bagi 2')
A(2,:)=A(2,:)/2
disp('Baris 3 = -3 Baris 2 + Baris 3')
A(3,:)=-3*A(2,:)+A(3,:)
disp('Baris 3 = -2 kali Baris 3')
A(3,:)=-2*A(3,:)
z=A(3,4)
y=A(2,4)-z*A(2,3)
x=A(1,4)-(A(1,2)*y+A(1,3)*z)

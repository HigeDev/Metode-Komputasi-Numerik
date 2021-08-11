a=1;
b=3;
galat=0.0001;
f=inline('x^3+2*x^2+10*x-20');
iterasi=1;
disp('  i       a          b         fa        fb         x       fx');
while (b-a)>galat 
    x= (a+b)/2;
    disp(sprintf('%3g %10.7f %10.7f %10.7f %10.7f %10.7f %10.7f',iterasi,a,b,f(a),f(b),x,f(x)))
    if f(a)*f(x)<0
        b=x;
    else
        a=x;
    end
    if f(a)*f(b)==0
        exit
    end
    iterasi=iterasi+1;
end
disp(sprintf('Hasil Akar=%11.8f',x))

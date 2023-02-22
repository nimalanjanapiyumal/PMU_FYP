
t=0:0.001:0.02;
N = 20;
f0=50;
theta = 2*pi/N;
xt = 10*cos(2*pi*f0*t);

xn = zeros(1,N);

for Xn = [0:1:N-1]
    xn(Xn+1)=10*cos(Xn*theta);
end


Xc = zeros(1,N);
for Xn = [0:1:N-1]
    Xc(Xn+1)=cos(Xn*theta);
end

N = 20;
theta = 2*pi/N;
Xs = zeros(1,N);
for Xn = [0:1:N-1]
    Xs(Xn+1)=sin(Xn*theta);
end


sum_c =0;
for Xn = [0:1:N-1]
    temp=xn(Xn+1)*Xc(Xn+1);
    sum_c=sum_c+temp;
end

Xc_N_1 = sqrt(2)/N*sum_c;

sum_s =0;
for Xn = [0:1:N-1]
    temp=xn(Xn+1)*Xs(Xn+1);
    sum_s=sum_s+temp;
end

Xs_N_1 = sqrt(2)/N*sum_s;

X_N_1 = Xc_N_1-j*Xs_N_1;







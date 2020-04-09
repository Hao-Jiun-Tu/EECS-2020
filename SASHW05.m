clc;clear;close all;

f=0.1;

t=-10:0.01:10;
x_ct=sin(2*pi*f*t);

n=-10:1:10;
x_dt=sin(2*pi*f*n);

x_r=0;
for k=-1000:1:1000;   % try to change the range of k, and observe the difference.
x_1=sin(2*pi*f*k)*sin(pi*(t-k))./(pi*(t-k));
x_r=x_1+x_r;
end


figure(1)
plot(t,x_ct,'b')
hold on
stem(n,x_dt,'r')
axis([-10,10,-1.2, 1.2])

figure(2)
plot(t,x_ct+0.00,'b')
hold on
plot(t,x_r,'r')
axis([-10,10,-1.2, 1.2])








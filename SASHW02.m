clc; clear; close all;

%% problem 1(a)
t=-5:0.1:5;
x1=exp(-pi*abs(t));

f=-5:0.1:5;
y1=(2*pi)./(pi^2+4*(pi^2)*(f.^2));

figure(1)
subplot(2,1,1)
plot(t,x1,'k')
xlabel('Time')
ylabel('x(t)')
subplot(2,1,2)
plot(f,y1,'b')
xlabel('f')
ylabel('X(f)')

%% problem 1(b)
t=-5:0.1:5;
x2=exp(-pi*t.^2);

f=-5:0.1:5;
y2=exp(-pi*f.^2);

figure(2)
subplot(2,1,1)
plot(t,x2,'k')
xlabel('Time')
ylabel('x(t)')
subplot(2,1,2)
plot(f,y2,'b')
xlabel('f')
ylabel('X(f)')

%% problem 5
a=3/4;


n=-10:1:20;
u=heaviside(n);
u(n==0)=1 ;
x3=(a.^n).*u;

f=-0.5:0.01:0.5;
y3=1./(1-3/4*exp(-j*2*pi*f));




figure(3)
subplot(3,1,1)
stem(n,x3,'k')
xlabel('n')
ylabel('x[n]')

subplot(3,1,2)
plot(f,abs(y3),'b')
xlabel('f')
ylabel('Amplitude of X(f)')

subplot(3,1,3)
plot(f,angle(y3),'r')
xlabel('f')
ylabel('Phase of X(f)')














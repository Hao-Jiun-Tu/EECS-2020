clc; clear; close all;

f1=+0.4;
f2=+0.6;
f3=+1.4;
f4=+1.6;

t=0:0.01:10;
x1=cos(2*pi*f1*t);
x2=cos(2*pi*f2*t);
x3=cos(2*pi*f3*t);
x4=cos(2*pi*f4*t);

n=0:1:10;
y1=cos(2*pi*f1*n);
y2=cos(2*pi*f2*n);
y3=cos(2*pi*f3*n);
y4=cos(2*pi*f4*n);



figure(1)
plot(t,x1,'k')
hold on
stem(n,y1,'r')
xlabel('Time')
ylabel('CT Signal x1(t) and DT Signal x1[n]')


figure(2)
plot(t,x2,'k')
hold on
stem(n,y2,'r')
xlabel('Time')
ylabel('CT Signal x2(t) and DT Signal x2[n]')


figure(3)
plot(t,x3,'k')
hold on
stem(n,y3,'r')
xlabel('Time')
ylabel('CT Signal x3(t) and DT Signal x3[n]')


figure(4)
plot(t,x4,'k')
hold on
stem(n,y4,'r')
xlabel('Time')
ylabel('CT Signal x4(t) and DT Signal x5[n]')





figure(5)
subplot(411)
plot(t,x1,'k')
xlabel('Time')
ylabel('CT Signal x1(t)')
subplot(412)
plot(t,x2,'k')
xlabel('Time')
ylabel('CT Signal x2(t)')
subplot(413)
plot(t,x3,'k')
xlabel('Time')
ylabel('CT Signal x3(t)')
subplot(414)
plot(t,x4,'k')
xlabel('Time')
ylabel('CT Signal x4(t)')

figure(6)
subplot(411)
stem(n,y1,'k')
xlabel('Time')
ylabel('DT Signal x1[n]')
subplot(412)
stem(n,y2,'k')
xlabel('Time')
ylabel('DT Signal x2[n]')
subplot(413)
stem(n,y3,'k')
xlabel('Time')
ylabel('DT Signal x3[n]')
subplot(414)
stem(n,y4,'k')
xlabel('Time')
ylabel('DT Signal x4[n]')





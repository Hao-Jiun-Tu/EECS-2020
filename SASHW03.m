clc; clear; close all;

% DTFS Exercise 

% In this homework, we are going to learn two things.
% (1) The first is the relationship between sampling frequency and sinusoidal
%     signal freqeuncy.
% (2) The second is the relationship between datalength and sinusoidal
%     signal freqeuncy.  



%% Parameter Setting 
f=0.001;  %frequency of sinusoidal signal
L=1024;     %datalength of signal
%% TimeDomain
%CT signal
t=0:0.01:L-1;
x=cos(2*pi*f*t);

figure(1)
plot(t,x,'b')
hold on

%DT signal
%sampling frequency(fs) is 1
%sampling period(Ts) is 1
n=0:1:L-1;
x=cos(2*pi*f*n);

stem(n,x,'r')
axis([-0.5,L-0.5,-inf,+inf])

%% FFT (non-zero mean)

%matlab FFT function
Xfft1 = fft(x);

% DFT 
for k=1:1:L
   for n=1:1:L
      y(n)=x(n)*exp(-j*(k-1)*2*pi*(n-1)/L);
   end
    Xdft1(k)=sum(y);
end

figure(2)
stem([0:L-1],abs(Xfft1),'b')
hold on
stem([0.05:L-1+0.05],abs(Xdft1),'r')
axis([-0.5,L-1+0.5,0,+inf])

%% FFT (zero mean)

%matlab FFT function
Xfft2 = fft(x-mean(x));
 
% DFT 
for k=1:1:L
    for n=1:1:L
       y(n)=(x(n)-mean(x))*exp(-j*(k-1)*2*pi*(n-1)/L);
    end
    Xdft2(k)=sum(y);
end
 
figure(3)
stem([0:L-1],abs(Xfft2),'b')
hold on
stem([0.05:L-1+0.05],abs(Xdft2),'r')
axis([-0.5,L-1+0.5,0,+inf])














function y1 = GenSine(t,freq,fs);
% function y1 = GenSine(t,freq,fs);
%
% Generates a sine wave 
%
%  where
%  t     : duration of the signal;
%  freq  : frequency of sine;
%  fs    : sample frequency;

x=[1:ceil(fs*t)];
y1= sin(2*pi*x*freq/fs);

%By Pete D. Best 02/07/22

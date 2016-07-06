function y = HLShape(frm, fs);
%function y = HLShape(frm, fs);
% 
% generates windowed sinc filter with a HL shaped spectrum
% 
% where:
%  y     = filter kernel
%
%  frm   = # of points in filter kernel (default = 1024 points)
%  fs    = sample frequency             (default = 44100)            
hp = 'hd';

if nargin  < 2, fs    = 44100        ; end;
if nargin  < 1, frm   =  1024        ; end;

hfm  = floor(frm/2);              % frequencies in each bin 
freq = fs/frm*(1:hfm);            %  of correction filter

switch hp
case {'hd'}
 lopa = 16e3;
 d1l  = load('HDA200R.txt');        % HDA200 frequency response
case {'td'}
 lopa = 8e3;
 d1l  = load('TDH39Pc313539.txt');
case {'dt'}
 lopa = 8e3;
 d1l  = load('DT481LTD.txt');
end
col  =  125*2^(-1/6);          % lower cut-off frequency
cou  = lopa*2^( 1/6);         % higher cutoff frequency

dtc  = CorrectPhones(freq, d1l,...% get correction headphones in dB 
       [125 lopa]);

hl = HearLevel(freq,hp);        % get HL spectrum in dB
  
y=10.^((dtc+hl)/20);              % from dB to amplitudes 
%y=10.^((hl)/20);                  % from dB to amplitudes 
y=y.*(freq>=col).*(freq<=cou);    % freq outside col-cou 0 amplitude                                  

y=[0 y(1:hfm-1) 2*y(hfm) rot90(y(1:hfm-1))']; % mirror spectrum
y=real(ifft(y));                  % from F to T domain;
y=[y(hfm+2:frm) y(1:hfm+1)];      % pulse in middle
y=hamming(length(y))'.* y;        % window the sinc filter 

%Pete D. Best 06/10/14
% 06/24/16 included switch option for headphone type
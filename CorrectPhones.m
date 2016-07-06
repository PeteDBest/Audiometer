function [hdc]=CorrectPhones(freq, resp, nregion)
%
%
%   returns the correction for a headphone in dB
%
%  freq    : frequency in Hz
%  resp    : spectrum of headphone
%  nregion : normalization region

fr1  = resp(:,1);
resp(:,1)= [];

%average dbs of spectra in nregion;
lozero= fr1>=nregion(1);
hizero= fr1<=nregion(2);
%power =10*log10(sum(10.^(resp.*lozero.*hizero)/10));
power =sum(resp.*lozero.*hizero);
power = power/sum(hizero.*lozero);

resp=resp-power;
hdc=-spline(fr1,resp, freq); 

%written on 02/07/19 by Pete D. Best
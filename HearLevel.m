function [hl]=HearLevel(freq, type)
% [hl]=HearLevel(freq, type)
%
%  returns hearing levels in dB as defined by ISO 389-1
%   intermediate frequencies and frequencies outside
%   .125-8kHz region are interpolated resp. extrapolated 
%   using cubic splines.
%  
%  freq : frequency in Hz
%  type : type of headphones 'dt' Beyer DT48
%                            'td' Telephonics TDH 39
%                            'hd' Sennheiser HDA200
%                            'ot' other 

fhl=[  125   160   200  250   315  400   500   630   ... %iso 389-1 defined
       750   800  1000 1250  1500 1600  2000  2500   ... % freqencies
      3000  3150  4000 5000  6000 6300  8000];
switch lower(type)
case {'dt'}
 dhl=[ 47.5  40.5  34   28.5  23   18.5  14.5  11.5  ... %iso 389-1 defined 
       9.5   9     8    7.5   7.5  7.5   8     7     ... % HL corrections
       6     6     5.5  7     8    9   14.5];
case {'td'}
 dhl=[ 45    37.5  31.5 25.5  20   15    11.5   8.5  ... %iso 389-1 defined 
       7.5   7     7    6.5   6.5  7     9      9.5  ... % HL corrections
       10    10     9.5 13    15.5 15    13];
case {'hd'}
 dhl=[30.5  26.0  22.0  18.0  15.5 13.5   11.0   8.0 ... %iso 389-8 defined 
       6.0   6.0   5.5   6.0   5.5  5.5    4.5   3.0 ... % HL corrections
       2.5   4.0   9.5  14.0  17.0 17.5   17.5];

 fhl=[fhl   9000 10000 11200 12500 14000 16000];         %iso 389-5 defined
 dhl=[dhl   19.0  22.0  23.0  27.5 35.0   56.0];         % HL corrections
                                                         % TBC currently from 
                                                         % Auditory Modeling Toolbox
otherwise
 dhl=[ 45    38.5  32.5 27    22   17    13.5  10.5 ... %iso 389-1 defined 
       9     8.5   7.5  7.5   7.5  8     9     10.5 ... % HL corrections
       11.5  11.5  12   11    16   21  15.5];
end;
hl=spline(fhl,dhl,freq);       % interpolate hearing levels

%written on 02/07/22 by Pete D. Best
% extended for HDA200 06/17/08
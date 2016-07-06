function [Signal, WaveNorm] = GenSound(S);
%function [Signal, WaveNorm] = GenSound(S);
% generates a sine pulse for measurement of hearing thresholds
%
% where:
%  Signal   = mono signal at 0 dB HL in <-1..1> range
%  WaveNorm = normalization to get signal at required level
%  
%  S        = structure with signal information
%  .fs      = sampling rate                [Hz]
%  .freq    = frequency of the signal      [Hz]
%  .t       = duration of signal            [s]
%  .Atck    = duration of fade in and out   [s]

frm = 4096;                           % filter size (# of points);

tio = 2*frm./S.fs;                    % maximal filter ringing 
y      = HLShape(frm, S.fs);          % filter with HL spectrum
x      = GenSine(S.t + tio,     ...   % generate signal within [-1..1] range
                 S.freq,        ...
                 S.fs);
x      = conv(x,y);                   % filter signal
Signal = x(frm+1:frm+floor(S.fs*S.t));       % remove filter ringing

Signal = FadeIn( Signal,        ...
                 S.Atck,        ...
                 'C',           ...
                 S.fs);
Signal = FadeOut(Signal,        ...
                 S.Atck,        ...
                 'C',           ...
                 S.fs);
WaveNorm = NormalWave(Signal);        % level change for <-1..1> range
Signal   = dB2amp(Signal, WaveNorm);  % get signal to <-1..1 > range
WaveNorm = -WaveNorm;                 % factor to get signal to right level
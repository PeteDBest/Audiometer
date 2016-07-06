function factor = NormalWave(signal);
%function factor = NormalWave(signal);
% calculates the amplitude change needed to
% get signal into [-1..1] range.
%
% where
%  factor = amplitude change  [dB]
%  signal = signal to normalise
factor = -20 * log10(max(abs(signal)));


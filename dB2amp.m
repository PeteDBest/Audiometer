function y=dB2amp(Signal, factor)
% function y=dB2amp(Signal, factor)
%
%  amplifies the amplitude of signal
%
%  where:
%   Signal : vector containing the signal
%   factor : amplication in dB (use negative values for attenuation)
y = Signal.*exp((factor./20).*log(10));

%Pete D. Best 02/07/23
% 10/01/20 vectorized
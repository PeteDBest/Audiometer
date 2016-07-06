function OutSig = FadeIn(InSig, dur, shape, fs);
% function OutSig = FadeIn(InSig, dur, shape, fs);
%  Fade in of signal
%  
%  where:
%    InSig : Signal to fade in
%    dur   : duration of the fade in seconds
%    shape : shape of fade {'C' : cosine 
%                           'L' : linear
%                           'C2': cosine square}
%    fs    : sample frequency;
%
bpoint = round(fs * dur)+1;           % sample # of first full level;
lpoint = bpoint -1;                   % last attenuated sample
ramp   = [0:lpoint]/lpoint;           % linear ramp 

if shape == 'C'                       
    ramp = sin(ramp*pi/2);            % convert to cosine ramp
elseif shape == 'L'
    ramp = sqrt(ramp);
elseif shape == 'C2'
    ramp = sin(ramp*pi/2).^2;
end;
OutSig = ramp.*InSig(1: bpoint);
OutSig = [OutSig InSig(bpoint+1:end)];

% by Pete D. Best 03/04/25

function OutSig = FadeOut(InSig, dur, shape, fs);
% function OutSig = FadeOut(InSig, dur, shape, fs);
%  Fade in of signal
%  
%  where:
%    InSig : Signal to fade out
%    dur   : duration of the fade in seconds
%    shape : shape of fade 'C' for cosine or 'L' for lineair
%    fs    : sample frequency;
%
OutSig = fliplr(FadeIn(fliplr(InSig), dur, shape, fs));
% by Pete D. Best 03/04/25

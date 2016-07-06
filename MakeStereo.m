function out = MakeStereo(lat, cal, ear);
%function out = MakeStereo(lat, cal, ear);
% makes a stereo signal
%
% where:
%  out = matrix with stereo signal
%
%  lat = signal in speciefied ear
%  cal = signal in collateral ear
%  ear = ear with signal [0:left, 1:right]
if ~ear,
  out(:,1) = lat;
  out(:,2) = cal;
else
  out(:,1) = cal;
  out(:,2) = lat;
end

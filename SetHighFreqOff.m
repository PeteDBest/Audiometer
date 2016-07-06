% SetHighFreqOff.m
NoFreq = length(handles.freq);
for i=[8:NoFreq],  % disable high frequencies
  set(handles.FreqAll(i), 'enable', 'off');
end;
handles.FreqAll(8:NoFreq) = []; % handles to high-frequency radio buttons
handles.freq(   8:NoFreq) = [];
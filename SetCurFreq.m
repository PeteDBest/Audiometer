%SetCurFreq.m
% updates the frequency control panel after frequency selection and
% updates th current frequency
for i=[1:length(handles.freq)],
  set(handles.FreqAll(i),                 ... % turn all buttons off
      'Value', 0);              
end;

set(handles.FreqAll(handles.CurFreqItem), ... % turn one button on
    'Value', 1);

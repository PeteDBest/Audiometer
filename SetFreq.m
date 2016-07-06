%SetFreq.m
% sets the frequency control radio group

for i=[1:length(handles.freq)],  %supply labels to radio buttons
  set(handles.FreqAll(i),                                     ...
      'String',      sprintf('%g kHz', handles.freq(i)*1e-3), ...
      'HorizontalAlignment', 'right');
end;

% Controlon.m
for CurContr = 1:length(handles.FreqAll),
 set(handles.FreqAll(CurContr), 'enable', 'on')
end
set(handles.VolumeSlider, 'enable', 'on');
set(handles.LeftEar,      'enable', 'on');
set(handles.RightEar,     'enable', 'on');
set(handles.PlayButton,   'enable', 'on');
set(handles.ResetButton,  'enable', 'on');
set(handles.ExitButton,   'enable', 'on');
% ControlOff.m
for CurContr = 1:length(handles.FreqAll),
 set(handles.FreqAll(CurContr), 'enable', 'off')
end
set(handles.VolumeSlider, 'enable', 'off');
set(handles.LeftEar,      'enable', 'off');
set(handles.RightEar,     'enable', 'off');
set(handles.PlayButton,   'enable', 'off');
set(handles.ResetButton,  'enable', 'off');
set(handles.ExitButton,   'enable', 'off');
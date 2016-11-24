% EarChange
InitSound;
CurrentLevel = handles.HearThres(handles.Ear,            ...
                                 handles.CurFreqItem);
if CurrentLevel <= get(handles.VolumeSlider, 'max'),
 set(handles.VolumeSlider, 'value', CurrentLevel);
 UpdateVolumeSlider;
end
handles.AttnChange = 1;     
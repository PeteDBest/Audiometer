%InitVolumeControl.m
InitLevel = handles.HearThres( get(handles.RightEar, 'value') + 1,      ...
                               handles.CurFreqItem);
Max    =  handles.S.max;                 % maximum slider value   [dB]
Min    =  handles.S.min;                 % minimum slider value   [dB]
StepS  =   5;                            % minimum step size      [dB]
StepL  =  10;                            % maximum step size      [dB]
Step   = [StepS, StepL]./(Max-Min);      % convert to percentages [dB]

set(handles.VolumeSlider,            ...
    'Max',        Max,               ... % maximum slider setting
    'Min',        Min,               ... % minimum slider setting
    'Value',      InitLevel,         ... % current slider setting
    'SliderStep', Step);                 % minimum slider setting

set(handles.VolumeSlider, 'value', InitLevel);
set(handles.LevelText,               ... % display current level
    'String',                        ...
    sprintf('%-3.0f dB',InitLevel));

handles.AttnLevel  = handles.S.norm + InitLevel;
handles.AttnChange = 1;                  % slider was changed
%InitEar.m
% initializes RadioButtons for Ear
handles.Ear = 1;
set(handles.LeftEar, 'String', 'left', ...
                     'value',       1);
set(handles.RightEar, 'String', 'right', ...
                      'value',      0);
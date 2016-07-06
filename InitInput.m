%InitInput.m
% initializes the line-input of the audio device for recording
SndRecInit(0,handles.MixerID2);                      % set recording slider

InDev            = audiodevinfo(1,AudioDev);         % MatLab input audio dev #
handles.Recorder = audiorecorder(handles.S.fs,   ... % create audio recorder
                                 16,             ...
                                 2,              ...
                                 InDev);

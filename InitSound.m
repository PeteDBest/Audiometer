%InitSound.m
handles.S.fs        = handles.fs;          % sample frequency            [Hz]
handles.S.freq      =              ...     % frequency
handles.freq(handles.CurFreqItem);
% for info about signal durations of 1.1 s see Poulsen & Oakley (IJA 2009) who refer to IEC 60645-1 (2001))
handles.S.t         =  1.1;                % total duration of signal    [s] .
handles.S.Atck      = .040;                % attack/decay time of signal [s]
[handles.S.wave,   ... 
 norm]              = GenSound(handles.S); % create test signal
handles.S.sil       = zeros(1,         ... % contra lateral silence
                       length(         ...
                        handles.S.wave)); 
handles.S.norm      = norm + ...           % attenuation required
                      handles.cal;         % to play signal at 0 dB HL

handles.S.max       = 10*floor(-handles.S.norm/10);  % maximal playback level;
handles.S.min       = handles.S.max - 125; % assume 125 dB dynamic range on card
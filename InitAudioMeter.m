%InitAudioMeter.m
%initializes the variables of the audiometer
handles.WaitRespons = 0;                 % disable play button
handles.freq    = [ 125,          ...    % audiometric frequencies
                    250,          ...
                    500,          ...
                   1000,          ...
                   2000,          ...
                   4000,          ...
                   8000,          ...
                  10000,          ...
                  12500,          ...
                  14000,          ...
                  16000];

handles.FreqAll = [handles.freq1,  ...   % handle array to
                   handles.freq2,  ...   % radio buttons
                   handles.freq3,  ...   % of frequency control
                   handles.freq4,  ...
                   handles.freq5,  ...
                   handles.freq6,  ...
                   handles.freq7,  ...
                   handles.freq8,  ...
                   handles.freq9,  ...
                   handles.freq10, ...
                   handles.freq11];
handles.CurFreqItem = 4;                 % currently selected radio button

handles.fs          = 44100;
handles.AsioID      = 0;                 % ASIO device # for playback
maud_action('open',             ...
            handles.AsioID,     ...
            handles.AsioID,     ...
            handles.fs,         ...
            8,                  ...
            5);
handles.HeadPhones  = 'HDA200';
InitLevel           = 40;                % initial ouput level
handles.HearThres   = InitLevel.*                  ... % initialise threshold
                      ones(2,length(handles.freq));    % matrix



i=1;
while i<=MyNargin-3;             % pass arguments to corresponding variables
 switch lower(varargin{i})
  case { 'headphones' }
   i = i + 1;
   handles.HeadPhones = varargin{i};
  case {'thresh'}
   i = i + 1;
   handles.HearThres  = varargin{i};
  case {'callfun'}       % handle to function in calling figure
   i = i + 1;            % to transport data
   handles.CallFun   = varargin{i};
  case {'callfig'}           % handle to calling figure
   i = i + 1;               % to transport data
   handles.CallFig   = varargin{i};
 end;
 i = i + 1;
end;

switch handles.HeadPhones
case {'HDA300'}
 handles.cal         = -123;               % calibration factor for HDA300
case {'HDA200'}
 handles.cal         = -117;               % calibration factor for HDA200
case {'TDH39'}
 handles.cal         = -134;               % calibration factor for TDH39
end



InitEar;                                 % initialize ear settings
InitSound;                               % initialize probe sound
InitVolumeControl;                       % initialize volume settings                                             

SetFreq;                                 % supply frequency selector with frequencies
SetCurFreq;                              % set radio button for frequency

PlotAudiogram;

SetHighFreqOff;                          % disable high frequency audiometry
handles.WaitRespons = 1;                 % enable play button

set(gcf,'Visible','on');                 % 
drawnow;
uicontrol(handles.VolumeSlider);
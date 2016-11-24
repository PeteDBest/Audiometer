function varargout = Audiometer(varargin)
% AUDIOMETER M-file for Audiometer.fig
%      AUDIOMETER, by itself, creates a new AUDIOMETER or raises the existing
%      singleton*.
%
%      H = AUDIOMETER returns the handle to a new AUDIOMETER or the handle to
%      the existing singleton*.
%
%      AUDIOMETER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AUDIOMETER.M with the given input arguments.
%
%      AUDIOMETER('Property','Value',...) creates a new AUDIOMETER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Audiometer_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Audiometer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Audiometer

% Last Modified by GUIDE v2.5 22-Nov-2016 15:05:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Audiometer_OpeningFcn, ...
                   'gui_OutputFcn',  @Audiometer_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Audiometer is made visible.
function Audiometer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Audiometer (see VARARGIN)
MyNargin= nargin;

InitAudioMeter;                 % initialize audiometer
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = Audiometer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.figure1;
% varargout{1} = handles.HearThres;
% maud_action('close');                % clean up
% delete(handles.figure1);

% --- Executes on button press in freq1.
function freq1_Callback(hObject, eventdata, handles)
% hObject    handle to freq1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.CurFreqItem = 1;        % currently selected radio button
FreqChange;                     % change frequency of test signal
guidata(hObject, handles);

% --- Executes on button press in freq2.
function freq2_Callback(hObject, eventdata, handles)
% hObject    handle to freq2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.CurFreqItem = 2;        % currently selected radio button
FreqChange;                     % change frequency of test signal
guidata(hObject, handles);

% --- Executes on button press in freq3.
function freq3_Callback(hObject, eventdata, handles)
% hObject    handle to freq3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.CurFreqItem = 3;        % currently selected radio button
FreqChange;                     % change frequency of test signal
guidata(hObject, handles);

% --- Executes on button press in freq4.
function freq4_Callback(hObject, eventdata, handles)
% hObject    handle to freq4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.CurFreqItem = 4;        % currently selected radio button
FreqChange;                     % change frequency of test signal
guidata(hObject, handles);

% --- Executes on button press in freq5.
function freq5_Callback(hObject, eventdata, handles)
% hObject    handle to freq5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.CurFreqItem = 5;        % currently selected radio button
FreqChange;                     % change frequency of test signal
guidata(hObject, handles);

% --- Executes on button press in freq6.
function freq6_Callback(hObject, eventdata, handles)
% hObject    handle to freq6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.CurFreqItem = 6;        % currently selected radio button
FreqChange;                     % change frequency of test signal
guidata(hObject, handles);

% --- Executes on button press in freq7.
function freq7_Callback(hObject, eventdata, handles)
% hObject    handle to freq7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.CurFreqItem = 7;        % currently selected radio button
FreqChange;                     % change frequency of test signal
guidata(hObject, handles);

% --- Executes on button press in freq8.
function freq8_Callback(hObject, eventdata, handles)
% hObject    handle to freq8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.CurFreqItem = 8;        % currently selected radio button
FreqChange;                     % change frequency of test signal
guidata(hObject, handles);

% --- Executes on button press in freq9.
function freq9_Callback(hObject, eventdata, handles)
% hObject    handle to freq9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.CurFreqItem = 9;        % currently selected radio button
FreqChange;                     % change frequency of test signal
guidata(hObject, handles);

% --- Executes on button press in freq10.
function freq10_Callback(hObject, eventdata, handles)
% hObject    handle to freq10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.CurFreqItem = 10;       % currently selected radio button
FreqChange;                     % change frequency of test signal
guidata(hObject, handles);

% --- Executes on button press in freq11.
function freq11_Callback(hObject, eventdata, handles)
% hObject    handle to freq11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.CurFreqItem = 11;        % currently selected radio button
FreqChange;                     % change frequency of test signal
guidata(hObject, handles);


% --- Executes on slider movement.
function VolumeSlider_Callback(hObject, eventdata, handles)
% hObject    handle to VolumeSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
CurrentLevel = get(handles.VolumeSlider, 'value');
UpdateVolumeSlider;
set(hObject, 'Enable', 'off'); % DIRTY TRICK 
drawnow;                       % prevent slider from focus such that
set(hObject, 'Enable', 'on');  % arrow up down keys are deactivated
guidata(hObject, handles);

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function VolumeSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VolumeSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function KeyPress_Callback(hObject, eventdata, handles)
% hObject    handle to PlayButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set(hObject, 'Interruptible', off);
%set(hObject, 'BusyAction', cancel);
if handles.WaitRespons,     % only accept keyboard input when not playing
  handles.WaitRespons = 0;  % switch to 'IsPlaying' state
  guidata(hObject, handles);
  Key = eventdata.Key;
  switch Key
  case {'numpad0', 'p', 'return'}
   PlaySound;
  case {'uparrow'}
   CurrentLevel = get(handles.VolumeSlider, 'value') + 5;
   if CurrentLevel <= get(handles.VolumeSlider, 'max'),
    set(handles.VolumeSlider, 'value', CurrentLevel);
    UpdateVolumeSlider;
   end
  case {'downarrow'}
   CurrentLevel = get(handles.VolumeSlider, 'value') - 5;
   if CurrentLevel >= get(handles.VolumeSlider, 'min'),
    set(handles.VolumeSlider, 'value', CurrentLevel);
    UpdateVolumeSlider;
   end
  case {'leftarrow'}
   if handles.CurFreqItem > 1, 
    handles.CurFreqItem = handles.CurFreqItem - 1;        
    FreqChange;                     % change frequency of test signal
   end
  case {'rightarrow'}
   if handles.CurFreqItem < length(handles.freq), 
    handles.CurFreqItem = handles.CurFreqItem + 1;        
    FreqChange;                     % change frequency of test signal
   end
  case {'pageup'}
   set(handles.LeftEar,  'value', 1);
   set(handles.RightEar, 'value', 0);
   handles.Ear = 1;
   EarChange;
  case {'pagedown'}
   set(handles.LeftEar,  'value', 0);
   set(handles.RightEar, 'value', 1);
   handles.Ear = 2;
   EarChange;
  end;
  handles.WaitRespons = 1;  % switch to 'NotPlaying' state
end; 
guidata(hObject, handles);

% --- Executes on button press in LeftEar.
function LeftEar_Callback(hObject, eventdata, handles)
% hObject    handle to LeftEar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.LeftEar,  'value', 1);
set(handles.RightEar, 'value', 0);
handles.Ear = 1;
EarChange;
guidata(hObject, handles);
% Hint: get(hObject,'Value') returns toggle state of LeftEar


% --- Executes on button press in RightEar.
function RightEar_Callback(hObject, eventdata, handles)
% hObject    handle to RightEar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.LeftEar,  'value', 0);
set(handles.RightEar, 'value', 1);
handles.Ear = 2;
EarChange;
guidata(hObject, handles);
% Hint: get(hObject,'Value') returns toggle state of RightEar


% --- Executes on button press in PlayButton.
function PlayButton_Callback(hObject, eventdata, handles)
% hObject    handle to PlayButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.WaitRespons,     % only accept keyboard input when not playing
  handles.WaitRespons = 0;  % switch to 'IsPlaying' state
  PlaySound;
  handles.WaitRespons = 1;  % switch to 'NotPlaying' state
end; 
guidata(hObject, handles);


% --- Executes on button press in ResetButton.
function ResetButton_Callback(hObject, eventdata, handles)
% hObject    handle to ResetButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
InitLevel           = 40;                % initial ouput level
handles.HearThres   = InitLevel.*                  ... % initialise threshold
                      ones(2,length(handles.freq));    % matrix
handles.CurFreqItem = 4;                 % currently selected radio button


InitEar;                                 % initialize ear settings
InitSound;                               % initialize probe sound
InitVolumeControl;                       % initialize volume settings                                             

SetFreq;                                 % supply frequency selector with frequencies
SetCurFreq;                              % set radio button for frequency

PlotAudiogram;

SetHighFreqOff;                          % disable high frequency audiometry
handles.WaitRespons = 1;                 % enable play button
guidata(hObject, handles);

% --- Executes on button press in ExitButton.
function ExitButton_Callback(hObject, eventdata, handles)
% hObject    handle to ExitButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isfield(handles, 'CallFig'),                           % only if linked to Subject
if ishandle(handles.CallFig),                             % and Subject still exists
  handles.CallFun(gcf, handles.HearThres , handles.CallFig);    % update Subject
end
end


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
maud_action('close');                % clean up
% Hint: delete(hObject) closes the figure
delete(hObject);

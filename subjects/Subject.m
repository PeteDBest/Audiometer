function varargout = Subject(varargin)
% SUBJECT M-file for Subject.fig
%      SUBJECT, by itself, creates a new SUBJECT or raises the existing
%      singleton*.
%
%      H = SUBJECT returns the handle to a new SUBJECT or the handle to
%      the existing singleton*.
%
%      SUBJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUBJECT.M with the given input arguments.
%
%      SUBJECT('Property','Value',...) creates a new SUBJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Subject_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Subject_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Subject

% Last Modified by GUIDE v2.5 09-Nov-2011 17:17:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Subject_OpeningFcn, ...
                   'gui_OutputFcn',  @Subject_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Subject is made visible.
function Subject_OpeningFcn(hObject, eventdata, handles, varargin)
InitSubject
handles.output = hObject;
guidata(hObject, handles);


% --- Outputs from this function are returned to the command line.
function varargout = Subject_OutputFcn(hObject, eventdata, handles)
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function SubName_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function SubName_Callback(hObject, eventdata, handles)
handles.SubjectName = get(hObject,'string');
guidata(hObject, handles);


function BirthDate_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function BirthDate_Callback(hObject, eventdata, handles)
handles.SubjectBirth = datenum(get(hObject,'string'));
guidata(hObject, handles);


function subject_number_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function subject_number_Callback(hObject, eventdata, handles)
handles.SubjectNumber = get(hObject,'string');
guidata(hObject, handles);


function ThrLef025_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function ThrLef025_Callback(hObject, eventdata, handles)
handles.SubjectThres(1,2)= str2double(get(hObject,'String'));
guidata(hObject, handles);


function ThrLef050_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function ThrLef050_Callback(hObject, eventdata, handles)
handles.SubjectThres(1,3)= str2double(get(hObject,'String'));
guidata(hObject, handles);


function ThrLef100_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function ThrLef100_Callback(hObject, eventdata, handles)
handles.SubjectThres(1,4)= str2double(get(hObject,'String'));
guidata(hObject, handles);


function ThrLef200_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function ThrLef200_Callback(hObject, eventdata, handles)
handles.SubjectThres(1,5)= str2double(get(hObject,'String'));
guidata(hObject, handles);


function ThrLef400_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function ThrLef400_Callback(hObject, eventdata, handles)
handles.SubjectThres(1,6)= str2double(get(hObject,'String'));
guidata(hObject, handles);


function ThrLef800_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function ThrLef800_Callback(hObject, eventdata, handles)
handles.SubjectThres(1,7)= str2double(get(hObject,'String'));
guidata(hObject, handles);



function UCLLef025_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function UCLLef025_Callback(hObject, eventdata, handles)
handles.SubjectUCL(1,2)= str2double(get(hObject,'String'));
guidata(hObject, handles);


function UCLLef050_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function UCLLef050_Callback(hObject, eventdata, handles)
handles.SubjectUCL(1,3)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function UCLLef100_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UCLLef100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function UCLLef100_Callback(hObject, eventdata, handles)
handles.SubjectUCL(1,4)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function UCLLef400_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UCLLef400 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function UCLLef400_Callback(hObject, eventdata, handles)
handles.SubjectUCL(1,6)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
% function edit15_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit15 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc
%     set(hObject,'BackgroundColor','white');
% else
%     set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
% end
% 
% 
% function edit15_Callback(hObject, eventdata, handles)
% % hObject    handle to edit15 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit15 as text
% %        str2double(get(hObject,'String')) returns contents of edit15 as a double
% 

% --- Executes during object creation, after setting all properties.
function UCLLef800_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UCLLef800 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function UCLLef800_Callback(hObject, eventdata, handles)
handles.SubjectUCL(1,7)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function ThrRig200_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThrRig200 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function ThrRig200_Callback(hObject, eventdata, handles)
handles.SubjectThres(2,5)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function ThrRig400_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThrRig400 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function ThrRig400_Callback(hObject, eventdata, handles)
handles.SubjectThres(2,6)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function ThrRig800_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThrRig800 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function ThrRig800_Callback(hObject, eventdata, handles)
handles.SubjectThres(2,7)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function ThrRig025_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThrRig025 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function ThrRig025_Callback(hObject, eventdata, handles)
handles.SubjectThres(2,2)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function ThrRig050_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThrRig050 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function ThrRig050_Callback(hObject, eventdata, handles)
handles.SubjectThres(2,3)= str2double(get(hObject,'String'));
guidata(hObject, handles);


function ThrRig100_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function ThrRig100_Callback(hObject, eventdata, handles)
handles.SubjectThres(2,4)= str2double(get(hObject,'String'));
guidata(hObject, handles);


function UCLRig025_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function UCLRig025_Callback(hObject, eventdata, handles)
handles.SubjectUCL(2,2)= str2double(get(hObject,'String'));
guidata(hObject, handles);


function UCLRig050_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function UCLRig050_Callback(hObject, eventdata, handles)
handles.SubjectUCL(2,3)= str2double(get(hObject,'String'));
guidata(hObject, handles);


function UCLRig100_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function UCLRig100_Callback(hObject, eventdata, handles)
handles.SubjectUCL(2,4)= str2double(get(hObject,'String'));
guidata(hObject, handles);


function UCLRig200_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function UCLRig200_Callback(hObject, eventdata, handles)
handles.SubjectUCL(2,5)= str2double(get(hObject,'String'));
guidata(hObject, handles);


function UCLRig400_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function UCLRig400_Callback(hObject, eventdata, handles)
handles.SubjectUCL(2,6)= str2double(get(hObject,'String'));
guidata(hObject, handles);


function UCLRig800_CreateFcn(hObject, eventdata, handles)
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function UCLRig800_Callback(hObject, eventdata, handles)
handles.SubjectUCL(2,7)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function UCLLef200_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UCLLef200 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function UCLLef200_Callback(hObject, eventdata, handles)
handles.SubjectUCL(1,5)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes on button press in SaveButton.
function SaveButton_Callback(hObject, eventdata, handles)
% hObject    handle to SaveButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
SaveSubject;


% --- Executes on button press in LoadButton3.
function LoadButton3_Callback(hObject, eventdata, handles)
% hObject    handle to LoadButton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
LoadSubject;
guidata(hObject, handles);


% --- Executes on button press in startSRTbutton.
function startSRTbutton_Callback(hObject, eventdata, handles)
% hObject    handle to startSRTbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
SRTparameters('Subject',        handles.SubjectName,        ...
              'LeftThreshold',  handles.SubjectThres(1,:),  ...
              'LeftUCL',        handles.SubjectUCL(1,:),    ...
              'RightThreshold', handles.SubjectThres(2,:),  ...
              'RightUCL',       handles.SubjectUCL(2,:));
         
function Audiogram_Callback(hObject, eventdata, handles)
Audiometer('callfun', @loadData_Callback,    ...
           'callfig', handles.figure1,       ...
           'Thresh',  handles.SubjectThres);
guidata(hObject, handles);

function loadData_Callback(hObject, SubjectThresh, SubjectHandle)
handles = guidata(SubjectHandle);          % get handles of SubjectGUI
handles.SubjectThres = SubjectThresh;      % update Subject structure
% handles.GUIEdited = true;                % flag indicating changes in gui
ShowThres;
guidata(handles.figure1, handles);


function ThrLef012_Callback(hObject, eventdata, handles)
handles.SubjectThres(1,1)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function ThrLef012_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThrLef012 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function UCLLef012_Callback(hObject, eventdata, handles)
handles.SubjectUCL(1,1)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function UCLLef012_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UCLLef012 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ThrRig012_Callback(hObject, eventdata, handles)
handles.SubjectThres(2,1)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function ThrRig012_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ThrRig012 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function UCLRig012_Callback(hObject, eventdata, handles)
handles.SubjectUCL(2,1)= str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function UCLRig012_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UCLRig012 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in StartThresh.
function StartThresh_Callback(hObject, eventdata, handles)
% hObject    handle to StartThresh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ThresholdParameters('subject', handles.SubjectName);


% --- Executes on button press in RepeatButton.
function RepeatButton_Callback(hObject, eventdata, handles)
% hObject    handle to RepeatButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setWindowState(handles.figure1,'minimize');
RepeatSeriesBox('subject', handles.SubjectNumber);
%setWindowState(handles.figure1,'restore');



% --- Executes on button press in radioFemale.
function radioFemale_Callback(hObject, eventdata, handles)
handles.SubjectSex    = 0;
set(handles.radioFemale, 'Value', 1);
set(handles.radioMale,   'Value', 0);
guidata(hObject, handles);

function radioMale_Callback(hObject, eventdata, handles)
handles.SubjectSex    = 1;
set(handles.radioFemale, 'Value', 0);
set(handles.radioMale,   'Value', 1);
guidata(hObject, handles);



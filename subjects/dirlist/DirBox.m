function varargout = DirBox(varargin)
% DIRBOX Application M-file for DirBox.fig
%   DIRBOX, by itself, creates a new DIRBOX or raises the existing
%   singleton*.
%
%   H = DIRBOX returns the handle to a new DIRBOX or the handle to
%   the existing singleton*.
%
%   DIRBOX('CALLBACK',hObject,eventData,handles,...) calls the local
%   function named CALLBACK in DIRBOX.M with the given input arguments.
%
%   DIRBOX('Property','Value',...) creates a new DIRBOX or raises the
%   existing singleton*.  Starting from the left, property value pairs are
%   applied to the GUI before DirBox_OpeningFunction gets called.  An
%   unrecognized property name or invalid value makes property application
%   stop.  All inputs are passed to DirBox_OpeningFcn via varargin.
%
%   *See GUI Options - GUI allows only one instance to run (singleton).
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DirBox

% Last Modified by GUIDE v2.5 09-Apr-2002 16:44:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',          mfilename, ...
                   'gui_Singleton',     gui_Singleton, ...
                   'gui_OpeningFcn',    @DirBox_OpeningFcn, ...
                   'gui_OutputFcn',     @DirBox_OutputFcn, ...
                   'gui_LayoutFcn',     [], ...
                   'gui_Callback',      []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    varargout{1:nargout} = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before DirBox is made visible.
function DirBox_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DirBox (see VARARGIN)

% Choose default command line output for DirBox
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

handles.filename = ''; %initialize output argument
if nargin == 3,
  initial_dir = pwd; % call without parameters gives current dir;
elseif nargin > 3
  if strcmpi(varargin{1},'dir') % 1st argument is 'dir'
    if exist(varargin{2},'dir') % 2nd argument is valid path;
      initial_dir = varargin{2};
    else
      errordlg('Invalid directory','Input Argument Error!')
      return
    end
  else
    errordlg('Unrecognized input argument','Input Argument Error!');
    return;
  end
end

load_listbox(initial_dir,handles);% Populate the listbox
% Return figure handle as first output argument
 
set(handles.figure1, 'CloseRequestFcn', 'uiresume'); % redefine close button
   
% UIWAIT makes DirBox wait for user response (see UIRESUME)
guidata(hObject, handles);
uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DirBox_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
%varargout{1} = handles.output;
varargout{1} = handles.filename;
delete(handles.figure1);

% ------------------------------------------------------------
% Callback for list box - open .fig with guide, otherwise use open
% ------------------------------------------------------------
function varargout = listbox1_Callback(h, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1

index_selected   = get(handles.listbox1,'Value');  % selected index
file_list        = get(handles.listbox1,'String'); % get file list;
handles.filename = file_list{index_selected};
guidata(handles.figure1,handles)
uiresume(handles.figure1);

% ------------------------------------------------------------
% Read the current directory and sort the names
% ------------------------------------------------------------
function load_listbox(dir_path,handles)
%cd (dir_path)
dir_struct                  = dir([dir_path, '\*.mat']);   % only *.mat files
[sorted_names,sorted_index] = sortrows({dir_struct.name}');% sort on name
handles.file_names          = sorted_names;
%handles.is_dir = [dir_struct.isdir];
handles.sorted_index        = [sorted_index];
guidata(handles.figure1,handles)

set(handles.listbox1,'String',handles.file_names,  ...  % place names in box
                     'Value',1                     ...
   );

CurPath = dir_path(max(find(dir_path=='\')):end); % only show lowest directory
set(handles.text1,'String',CurPath);              % put path in text


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background, change
%       'usewhitebg' to 0 to use default.  See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



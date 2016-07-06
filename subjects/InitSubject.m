%parameters from window
handles.SubjectName   = 'no-name-specified';
handles.SubjectNumber = 'no-number-specified';
handles.SubjectBirth  = datenum('01-jan-0000');
handles.SubjectSex    = 0;
set(handles.radioFemale, 'Value', 1);

handles.SubjectThres  = zeros(2,11);
handles.SubjectUCL    = ones(2,7).*110;

% parameters from SeriesBox
handles.Ended = 0;      % status of exit from AFCBox
handles.Threshold = 0;  % initialize Threshold value

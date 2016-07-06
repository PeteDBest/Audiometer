% LoadSubject.m
% reads information of the subject from <Subject#>.m file
datloc = 'H:\My Documents\UCL\speech intelligibility\present stimuli\subjects\data\';
subfile = DirBox('dir', datloc);
if length(subfile) > 0,
  LoadVar = ['load ''',datloc, '\''', subfile];
  eval(LoadVar);

  handles.SubjectName   = SubjectData.Name;
  handles.SubjectNumber = SubjectData.Number;
  handles.SubjectBirth  = SubjectData.Birth;
  handles.SubjectSex    = SubjectData.Sex;

  handles.SubjectThres  = SubjectData.Thres;
  handles.SubjectUCL    = SubjectData.UCL;

  set(handles.SubName,        'String', handles.SubjectName);
  set(handles.subject_number, 'String', handles.SubjectNumber);
  set(handles.BirthDate,      'String', datestr(handles.SubjectBirth));
  
  switch SubjectData.Sex,
    case {0}
      set(handles.radioFemale, 'Value', 1);
      set(handles.radioMale,   'Value', 0);      
    case {1}
      set(handles.radioFemale, 'Value', 0);
      set(handles.radioMale,   'Value', 1);      
  end

  set(handles.ThrLef012, 'String', sprintf('%d', handles.SubjectThres(1,1)));
  set(handles.ThrLef025, 'String', sprintf('%d', handles.SubjectThres(1,2)));
  set(handles.ThrLef050, 'String', sprintf('%d', handles.SubjectThres(1,3)));
  set(handles.ThrLef100, 'String', sprintf('%d', handles.SubjectThres(1,4)));
  set(handles.ThrLef200, 'String', sprintf('%d', handles.SubjectThres(1,5)));
  set(handles.ThrLef400, 'String', sprintf('%d', handles.SubjectThres(1,6)));
  set(handles.ThrLef800, 'String', sprintf('%d', handles.SubjectThres(1,7)));

  set(handles.UCLLef012, 'String', sprintf('%d', handles.SubjectUCL(1,1)));
  set(handles.UCLLef025, 'String', sprintf('%d', handles.SubjectUCL(1,2)));
  set(handles.UCLLef050, 'String', sprintf('%d', handles.SubjectUCL(1,3)));
  set(handles.UCLLef100, 'String', sprintf('%d', handles.SubjectUCL(1,4)));
  set(handles.UCLLef200, 'String', sprintf('%d', handles.SubjectUCL(1,5)));
  set(handles.UCLLef400, 'String', sprintf('%d', handles.SubjectUCL(1,6)));
  set(handles.UCLLef800, 'String', sprintf('%d', handles.SubjectUCL(1,7)));

  set(handles.ThrRig012, 'String', sprintf('%d', handles.SubjectThres(2,1)));
  set(handles.ThrRig025, 'String', sprintf('%d', handles.SubjectThres(2,2)));
  set(handles.ThrRig050, 'String', sprintf('%d', handles.SubjectThres(2,3)));
  set(handles.ThrRig100, 'String', sprintf('%d', handles.SubjectThres(2,4)));
  set(handles.ThrRig200, 'String', sprintf('%d', handles.SubjectThres(2,5)));
  set(handles.ThrRig400, 'String', sprintf('%d', handles.SubjectThres(2,6)));
  set(handles.ThrRig800, 'String', sprintf('%d', handles.SubjectThres(2,7)));

  set(handles.UCLRig012, 'String', sprintf('%d', handles.SubjectUCL(2,1)));
  set(handles.UCLRig025, 'String', sprintf('%d', handles.SubjectUCL(2,2)));
  set(handles.UCLRig050, 'String', sprintf('%d', handles.SubjectUCL(2,3)));
  set(handles.UCLRig100, 'String', sprintf('%d', handles.SubjectUCL(2,4)));
  set(handles.UCLRig200, 'String', sprintf('%d', handles.SubjectUCL(2,5)));
  set(handles.UCLRig400, 'String', sprintf('%d', handles.SubjectUCL(2,6)));
  set(handles.UCLRig800, 'String', sprintf('%d', handles.SubjectUCL(2,7)));
end
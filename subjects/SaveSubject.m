%SaveSubject.m
% write the information of the subject to a <Subject#>.m file
% for future loading
datloc = 'H:\My Documents\UCL\speech intelligibility\present stimuli\subjects\data\';
SubjectData.Name   = handles.SubjectName;
SubjectData.Number = handles.SubjectNumber;
SubjectData.Birth  = handles.SubjectBirth;
SubjectData.Sex    = handles.SubjectSex;

SubjectData.Thres  = handles.SubjectThres;
SubjectData.UCL    = handles.SubjectUCL;


SaveVar = ['save ''', datloc, SubjectData.Number,''' SubjectData'];
eval(SaveVar);

% maudtest - test/demo some of MAUD functionality
%
% make some sounds
%
t = 0:1/44100:0.5;
y1= sin(2*pi*256*t');
y2= sin(2*pi*440*t');
%
% say hello
%
fprintf('MAUD - MATLAB asynchronous audio\n\n');
%
fprintf('Found %d audio devices:\n',maud_action('get','devicecount'));
for i=0:maud_action('get','devicecount')-1
	inf=maud_action('get','deviceinformation',i);
	fprintf('%d. %s\n',i,inf.name);
end;
%
% set up some parameters
%
maud_action('set','outputdevice',1);
maud_action('set','inputdevice',1);
maud_action('set','outputoffset',0);
maud_action('set','inputoffset',0);
maud_action('set','samplerate',44100);
maud_action('set','numchannels',2);
maud_action('set','buffertime',5);
%
fprintf('\nabout to open ...\n');
s=maud_action('open');
fprintf('  status=%g\n',s);
fprintf('Using a latency of %d frames\n',maud_action('get','latency'));
%
fprintf('\nabout to start ...\n');
s=maud_action('start');
fprintf('  status=%g\n',s);
%
fprintf('\naudio running - press a key to play a tone ...\n');
pause
%
fprintf('\nabout to queue ...\n');
s=maud_action('queue',[y1 y2]);
fprintf('  status=%g\n',s);
%
for i=1:5
	fprintf('++output queue=%d stream time=%g\n',maud_action('status','output'),maud_action('status','time'));
	pause(0.1);
end
%
fprintf('\nabout to wait for output to drain ...\n');
s=maud_action('wait','output');
fprintf('  status=%g\n',s);
%
fprintf('\nplay complete - press a key to record something\n');
pause
%
fprintf('\nabout to record ...\n');
s=maud_action('reset');
fprintf('  status=%g\n',s);
%
fprintf('\nrecording for two seconds ...\n');
%
fprintf('++input queue=%d stream time=%g\n',maud_action('status','input'),maud_action('status','time'));
for i=1:4
	pause(0.5);
	fprintf('++input queue=%d stream time=%g\n',maud_action('status','input'),maud_action('status','time'));
end
%
fprintf('\nabout to collect ...\n');
x=maud_action('collect');
fprintf('got %d samples of %d channels\n',size(x,1),size(x,2));
%
fprintf('\nrecording complete - press a key to replay the recording\n');
pause
%
fprintf('\nabout to queue ...\n');
s=maud_action('queue',x);
fprintf('  status=%g\n',s);
%
fprintf('\nabout to wait for output to drain ...\n');
s=maud_action('wait','output');
fprintf('  status=%g\n',s);
%
fprintf('\nabout to close ...\n');
s=maud_action('close');
fprintf('  status=%g\n',s);
%

function status=maud_action(action,p1,p2,p3,p4,p5)
% MAUD_ACTION performs asynchronous audio operations using DirectSound or ASIO
%
% MAUD is a MEX interface to RTAUDIO which carries this copyight notice:
%
%    RtAudio provides a common API (Application Programming Interface)
%    for realtime audio input/output across Linux (native ALSA, Jack,
%    and OSS), SGI, Macintosh OS X (CoreAudio and Jack), and Windows
%    (DirectSound and ASIO) operating systems.
%
%    RtAudio WWW site: http://www.music.mcgill.ca/~gary/rtaudio/
%
%    RtAudio: realtime audio i/o C++ classes
%    Copyright (c) 2001-2008 Gary P. Scavone
%
%    Permission is hereby granted, free of charge, to any person
%    obtaining a copy of this software and associated documentation files
%    (the 'Software'), to deal in the Software without restriction,
%    including without limitation the rights to use, copy, modify, merge,
%    publish, distribute, sublicense, and/or sell copies of the Software,
%    and to permit persons to whom the Software is furnished to do so,
%    subject to the following conditions:
%
%    The above copyright notice and this permission notice shall be
%    included in all copies or substantial portions of the Software.
%
%    Any person wishing to distribute modifications to the Software is
%    asked to send the modifications to the original developer so that
%    they can be incorporated into the canonical version.  This is,
%    however, not a binding provision of this license.
%
%    THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
%    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
%    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
%    IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR
%    ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
%    CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
%    WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
%
% MAUD functions are as follows:
%
%  status=maud_action('open',odevice,idevice,samprate,numchannels,bufftime)
%    Opens audio device with current configuration settings for 2 channel
%    asynchronous simultaneous replay and record:
%      odevice = device ID for output channel (default 'outputdevice' parameter)
%      idevice = device ID for input channel (default 'inputdevice' parameter)
%      samprate = sampling rate (default 'samplerate' parameter)
%      nchannels = number of channels (default 'numchannels' parameter)
%      buftime = size of output/input buffers in seconds (default 'buffertime' parameter)
%
%  status=maud_action('close')
%    Closes the channels and empties the buffers. Use Open to restart.
%
%  status=maud_action('start')
%    Starts simultaneous replay and record. Silence is played if no output
%    is queued. Recording is put into input buffer until the buffer is full.
%
%  status=maud_action('queue',samples)
%    Adds samples to output queue. Samples should be double array of waveform
%    scaled -1..+1 with one row per frame, and one column per channel. Returns
%    number of frames actually queued.
%
%  samples=maud_action('collect')
%    Collects waveform from input buffer. Samples are returned with one row per frame
%    and one column per channel as floating point numbers -1.0 .. +1.0.
%
%  status=maud_action('reset')
%    Empties input buffer.
%
%  status=maud_action('wait','output')
%    Waits for the output queue to drain.
%
%  status=maud_action('status',param)
%    Returns various status values, depending on param:
%      param = 'input'
%        returns number of frames in input queue
%      param = 'output'
%        returns number of frames in output queue
%      param = 'time'
%        returns stream time in seconds
%
%  status=maud_action('set',param,paramval)
%    Sets the value of some configuration parameters (note that parameters can
%     only be set BEFORE the audio object is opened):
%      param = 'inputdevice'
%        sets input device channel ID (default 0).
%      param = 'outputdevice'
%        sets output device channel ID (default 0).
%      param = 'inputoffset'
%        sets index of first input channel to use (default 0).
%      param = 'outputoffset'
%        sets index of first output channel to use (default 0).
%      param = 'samplerate'
%        sets sampling rate (default 44100).
%      param = 'numchannels'
%        sets number of channels (default 1).
%      param = 'buffertime'
%        sets size of input/output buffer queues (default 5s).
%      param = 'latency'
%        requests buffer latency size in frames (default 512). After open, the actual 
%        latency can be read.
%      param = 'pause'
%        a non-zero value pauses acquisition and replay, a zero value restarts. Note that 
%        the audio device remains open and running even if signal transfer is paused.
%
%  status=maud_action('get',param)
%    Gets the value of some configuration parameters:
%      param = 'devicecount'
%        gets number of audio devices located.
%      param = 'inputdevice'
%        gets input device channel ID.
%      param = 'outputdevice'
%        gets output device channel ID.
%      param = 'inputoffset'
%        gets index of first input channel to use.
%      param = 'outputoffset'
%        gets index of first output channel to use.
%      param = 'samplerate'
%        gets sampling rate.
%      param = 'numchannels'
%        gets number of channels.
%      param = 'buffertime'
%        gets size of input/output buffer queues.
%      param = 'latency'
%        gets buffer latency in samples
%      param = 'pause'
%        gets flag indicating whether acquisition/replay is paused
%      param = 'isrunning'
%        gets flag indicating whether audio IO is running
%
%  info=maud_action('get','deviceinformation',devID)
%    Gets a structure describing audio device devID.
%
% MAUD was written by:
%  Mark Huckvale, 
%  University College London
%  m.huckvale@ucl.ac.uk
%
%  Version 1.0 - June 2008

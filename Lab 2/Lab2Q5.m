[signal, Fs] = audioread('my_speech_clip.wav');

L = length(signal); % Number of samples in the signal.
T = 1/Fs; % Sampling period in seconds.
t = (0:L-1)*T; % Time vector in seconds.

% Creates variable for alpha and echo delay(msec).
Te = 250;
alpha = 0.3;

%Creating a variable that keeps track of the number of samples delayed. 
S_delay = round((Te/1000) / T);

%Vector created to store impulse response
IR = zeros(S_delay+1,1);
%Value is set to 1 so we don't lose original signal
IR(1) = 1;
%The impulse response at the delayed time is set to alpha
IR(S_delay) = alpha;


%Echo is added after convolution
signalplusecho = conv(signal, IR);
%Rescales to ensure that the magntiude doesn't exceed 1 (avoids clipping)
signalplusecho = signalplusecho/max(abs(signalplusecho));

% Used to check the magntiude to make sure that no sample exceeds 1
magnitude = sqrt(signalplusecho);
magnitude;

audiowrite('speechwithconvo.wav', signalplusecho, Fs);
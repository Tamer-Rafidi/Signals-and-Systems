[signal, Fs] = audioread('my_speech_clip.wav');

L = length(signal); % Number of samples in the signal.
T = 1/Fs; % Sampling period in seconds.
t = (0:L-1)*T; % Time vector in seconds.

% Creates variable for alpha and echo delay(msec).
Te = 1000;
alpha = 0.3;

%Creating a variable that keeps track of the number of samples delayed. 
S_delay = round((Te/1000) / T);

%Vector created to store echos
signalplusecho = zeros(L+S_delay, 1);
signalplusecho(1:L) = signal;

%Echo is added
signalplusecho(S_delay+1:end) = signalplusecho(S_delay+1:end) + alpha*signal;
%Rescales to ensure that the magntiude doesn't exceed 1 (avoids clipping)
signalplusecho = signalplusecho/max(abs(signalplusecho));

% Used to check the magntiude to make sure that no sample exceeds 1
magnitude = sqrt(signalplusecho);
magnitude;

audiowrite('speechwithecho.wav', signalplusecho, Fs);
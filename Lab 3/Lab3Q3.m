% Samer Rafidi 400333524, Tamer Rafidi 400333527
% Use sinusoid frequency f = 300 Hz
f1 = 7200
f2 = 7600
f3 = 7800
f4 = 7900
%
% Sampling frequency and interval
fs = 8000;
Ts = 1/fs;
%
% Set time duration of plot, i.e., 10 msec.
tfinalplot = 10e-3;
%
% Make the time vector for the plot
nplot=0:Ts:tfinalplot;
%
% Make the time vector for replayed sound spurt
% Play the spurt for 2 seconds
tfinal = 2;
nsound=0:Ts:tfinal;

%creating a subplot for the first graph
subplot(4,1,1)
% Sample the sinusoid.
xnT7200 = sin(2*pi*f1*nsound);
plot(nplot, xnT7200(1:length(nplot)));
title('7200Hz Samer Rafidi 400333524, Tamer Rafidi 4000333527');

%creating a subplot for the second graph
subplot(4,1,2)
% Sample the sinusoid.
xnT7600 = sin(2*pi*f2*nsound);
plot(nplot, xnT7600(1:length(nplot)));
title('7600Hz Samer Rafidi 400333524, Tamer Rafidi 4000333527');

%creating a subplot for the third graph
subplot(4,1,3)
% Sample the sinusoid.
xnT7800 = sin(2*pi*f3*nsound);
plot(nplot, xnT7800(1:length(nplot)));
title('7800Hz Samer Rafidi 400333524, Tamer Rafidi 4000333527');

%creating a subplot for the fourth graph
subplot(4,1,4)
% Sample the sinusoid.
xnT7900 = sin(2*pi*f4*nsound);
plot(nplot, xnT7900(1:length(nplot)));
title('7900Hz Samer Rafidi 400333524, Tamer Rafidi 4000333527');

xnTotal = [xnT7200, xnT7600, xnT7800, xnT7900];

% Save xnT as a wav sound file, soundfile.wav.
audiowrite('Q3soundfile.wav', xnTotal, fs);
%
% Uncomment/edit this next line to save the graph.
%exportgraphics(gcf, 'Q2_Graph');
%
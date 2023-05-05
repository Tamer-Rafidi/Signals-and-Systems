% Samer Rafidi 400333524, Tamer Rafidi 400333527
% Use sinusoid frequency f = 300 Hz
f1 = 100
f2 = 200
f3 = 400
f4 = 800
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
%

%creating a subplot for the first graph
subplot(4,1,1)
% Sample the sinusoid.
xnT100 = sin(2*pi*f1*nsound);
plot(nplot, xnT100(1:length(nplot)));
title('100Hz Samer Rafidi 400333524, Tamer Rafidi 4000333527');

%creating a subplot for the second graph
subplot(4,1,2)
% Sample the sinusoid.
xnT200 = sin(2*pi*f2*nsound);
plot(nplot, xnT200(1:length(nplot)));
title('200Hz Samer Rafidi 400333524, Tamer Rafidi 4000333527');

%creating a subplot for the third graph
subplot(4,1,3)
% Sample the sinusoid.
xnT400 = sin(2*pi*f3*nsound);
plot(nplot, xnT400(1:length(nplot)));
title('400Hz Samer Rafidi 400333524, Tamer Rafidi 4000333527');

%creating a subplot for the fourth graph
subplot(4,1,4)
% Sample the sinusoid.
xnT800 = sin(2*pi*f4*nsound);
plot(nplot, xnT800(1:length(nplot)));
title('800Hz Samer Rafidi 400333524, Tamer Rafidi 4000333527');

xnTotal = [xnT100, xnT200, xnT400, xnT800];

% Save xnT as a wav sound file, soundfile.wav.
%audiowrite('Q2soundfile.wav', xnTotal, fs);
%
% Uncomment/edit this next line to save the graph.
%exportgraphics(gcf, 'Q2_Graph');
%
% Samer Rafidi 400333524, Tamer Rafidi 400333527
% Initializing variables
f1 = 100;
u = 5000;
fs = 32000;
Ts = 1/fs;

tfinalplot = (2000-1)*Ts;

% Make the time vector for the plot
nplot=0:Ts:tfinalplot;

% Make the time vector for replayed sound spurt
% Play the spurt for 8 seconds
tfinal = 8;
nsound=0:Ts:tfinal;

%Sample sinusiod
cT = cos(pi*u*nsound.^2+2*pi*f1*nsound);
% Plotting
plot(nplot, cT(1:length(nplot)));
xlabel('Time (seconds)');
ylabel('c(t)');
title('Aliasing of Frequency Chirp Signal Samer Rafidi 400333524, Tamer Rafidi 4000333527');

%Save audio file 
audiowrite('Q4.2soundfile.wav', cT, fs);
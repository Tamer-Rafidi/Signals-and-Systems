t = -10:10;
% Create an instance of the SimpleFunctions object.
f = SimpleFunctions();
% Evaluate the unit-step function, then plot it.
y = f.unitstep(t);

% 1a) x[n] = u[n] - 2u[n-1] + u[n-4]
y = f.unitstep(t)- 2*f.unitstep(t-1) + f.unitstep(t-4);



text(-9, 0.6, 'Samer Rafidi 400333524, Tamer Rafidi 400333527', 'FontSize', 13);


% 1b) x[n] = (n+2)u[n+2] - 2u[n] - nu[n-4]
y = (t+2).*unitstep(t+2)- 2.*unitstep(t) - t.*unitstep(t-4);
stem(t, y, 'LineWidth', 3);
%y;


%1c) x[n] = δ[n+1] - δ[n] + u[n+1] - u[n-2]
y = f.delta(t+1) - f.delta(t) + f.unitstep(t+1) - f.unitstep(t-2);
y;

%1d) x[n] = e(0.8n)u[n + 1] + u[n]
y = exp(0.8.*t).*unitstep(t+1) + unitstep(t);
y;
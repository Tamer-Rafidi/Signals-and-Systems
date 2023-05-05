t = 0:5;
f = SimpleFunctions();
% Evaluate the unit-step function, then plot it.
unit = f.unitstep(t);

x = f.unitstep(t)-f.unitstep(t-3)-f.unitstep(t)+f.unitstep(t);
v = f.unitstep(t)-f.unitstep(t-4)-f.unitstep(t)+f.unitstep(t);
%y = x - v;

con = conv(x, v);

len = 0:(length(con)-1);
%(length(con)-1);


stem(len, x, 'LineWidth', 3);
xlabel('n') % X axis
ylabel('x[n]*v[n]') % Y axis
title('Question 1A Plot')

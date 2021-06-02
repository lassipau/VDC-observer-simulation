% simulate
sim LinksVDCR1
%% plots
t = q1.time;
figuresize(15,10,'centimeters')
subplot(2,1,1);
plot(t, q1.data, 'linewidth', 2)
hold on, plot(t, q1d.data, '--k', 'linewidth', 1.5), hold off
set(gca, 'xtick', 0:5:20, 'xticklabel', {}, 'tickdir', 'out', ...
    'ytick', 0:2, 'fontsize', 12)
ylabel('$q_1\quad$', 'interpreter', 'latex', 'rotation', 0, 'fontsize', 14)
legend('$q_1$', '$q_{1d}$', 'interpreter', 'latex', 'fontsize', 14, ...
    'location', 'none', 'position', [0.28 0.4 1 1])
ylim([-0.22 2])
set(gca, 'position', [0.1 0.58 0.87 0.39])
subplot(2,1,2)
plot(t, q2.data, 'linewidth', 2)
hold on, plot(t, q2d.data, '--k', 'linewidth', 1.5), hold off
set(gca, 'xtick', 0:5:20, 'tickdir', 'out', ...
    'ytick', 0:2, 'fontsize', 12, 'position', [0.1 0.14 0.87 0.39])
ylabel('$q_2\quad$', 'interpreter', 'latex', 'rotation', 0, 'fontsize', 14)
xlabel('$t$', 'interpreter', 'latex', 'fontsize', 14)
legend('$q_2$', '$q_{2d}$', 'interpreter', 'latex', 'fontsize', 14, ...
    'location', 'none', 'position', [0.28 -0.29 1 1])
ylim([-0.22 2])
%%
t = q1.time;
ind = t >= 1;
figuresize(15,11,'centimeters')
subplot(2,1,1)
e1 = q1.data - q1d.data;
plot(t, e1, 'linewidth', 2)
ylabel('$e_1\quad$', 'interpreter', 'latex', 'rotation', 0, 'fontsize', 14)
set(gca, 'xtick', 0:5:20, 'xticklabel', {}, 'tickdir', 'out', ...
    'ytick', 0:.1:.2, 'fontsize', 12)
ylim([-0.01, 0.21])
set(gca, 'position', [0.1 0.57 0.82 0.36])
yyaxis right
plot(t(ind), e1(ind), 'linewidth', 2)
ylim([-5e-3, 5e-3])
set(gca, 'ytick', (-5:5:5)*1e-3)
% ax = gca;
% ax.YAxis(2).Color = 'k';
subplot(2,1,2)
e2 = q2.data - q2d.data;
plot(t, e2 , 'linewidth', 2)
ylabel('$e_2\quad$', 'interpreter', 'latex', 'rotation', 0, 'fontsize', 14)
set(gca, 'xtick', 0:5:20, 'tickdir', 'out', ...
    'ytick', 0:.1:.2, 'fontsize', 12)
ylim([-0.01, 0.21])
yyaxis right
plot(t(ind), e2(ind), 'linewidth', 2)
set(gca, 'ytick', (-5:5:5)*1e-3)
ylim([-5e-3, 5e-3])
xlabel('$t$', 'interpreter', 'latex', 'fontsize', 14)
set(gca, 'position', [0.1 0.12 0.82 0.36])
%%
qdd1 = @(t) pi/4*sin(pi/4*t);
qdd2 = @(t) pi/5*sin(pi/5*t);
t = q1dothat.time;
ind = t >= 1;
figuresize(15,10,'centimeters')
subplot(2,1,1)
e1d = q1dothat.data - qdd1(t);
plot(t,  e1d,'linewidth', 2)
set(gca, 'xtick', 0:5:20, 'xticklabel', {}, 'tickdir', 'out', ...
     'ytick', -2:0, 'fontsize', 12)
ylim([-2, 0.1])
xlim([0 20])
ylabel('$\dot{\hat{q}}_1 - \dot{q}_{1d}$', 'interpreter', 'latex', ...
    'rotation', 90, 'fontsize', 14)
set(gca, 'position', [0.1 0.58 0.81 0.39])
yyaxis right
plot(t(ind), e1d(ind), 'linewidth', 2)
ylim([-1, 1]*1.5e-2)
set(gca, 'ytick', (-1:1)*1e-2)
subplot(2,1,2)
e2d = q2dothat.data - qdd2(t);
plot(t, e2d, 'linewidth', 2)
set(gca, 'xtick', 0:5:20, 'tickdir', 'out', ...
     'ytick', -2:0, 'fontsize', 12)
ylim([-2, 0.1])
xlim([0 20])
ylabel('$\dot{\hat{q}}_2 - \dot{q}_{2d}$', 'interpreter', 'latex', ...
    'rotation', 90, 'fontsize', 14)
xlabel('$t$', 'interpreter', 'latex', 'fontsize', 14)
yyaxis right
plot(t(ind), e2d(ind), 'linewidth', 2)
ylim([-1 1]*1.5e-2)
set(gca, 'ytick', (-1:1)*1e-2)
set(gca, 'position', [0.1 0.14 0.81 0.39])
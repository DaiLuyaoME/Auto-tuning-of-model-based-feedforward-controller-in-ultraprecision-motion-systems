feedbackControlSignal = ufb.signals.values;
fbFilter = designfilt('lowpassiir', 'FilterOrder', 4, 'PassbandFrequency', 80, 'PassbandRipple', 0.01, 'SampleRate', 5000);
ufbF = filtfilt(fbFilter,feedbackControlSignal);
figure;
plot([feedbackControlSignal,ufbF]);
%%
errorTuned = Err;
%%
plotError(Err.time,Err.signals.values*1e9,'tracking error under ideal feedforward');
xlim([acc.time(1),acc.time(end)]);
hold on;
plot(errorTuned.time,errorTuned.signals.values*1e9,'linewidth',2,'displayname','tracking error under tuned feedforward','linestyle','--');
legend1 = legend(gca,'show');
legend1.FontSize = 10;
%%
fn = 700;
wn = fn * 2 * pi;
zn = 0.03;
m1 = 5;
m2 = 20;

k = wn^2 * m1 * m2 / (m1 + m2);
c = 2 * zn * wn * m1 * m2 / (m1 + m2);
%%
ww = sqrt(k*(m1 + m2)/(m1*m2));
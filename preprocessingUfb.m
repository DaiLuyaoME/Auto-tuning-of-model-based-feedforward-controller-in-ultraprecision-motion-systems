feedbackControlSignal = ufb.signals.values;
fbFilter = designfilt('lowpassiir', 'FilterOrder', 4, 'PassbandFrequency', 80, 'PassbandRipple', 0.01, 'SampleRate', 5000);
ufbF = filtfilt(fbFilter,feedbackControlSignal);
figure;
plot(snap.time,[feedbackControlSignal,ufbF],'linewidth',2);
hold on;
ratio31 = max(abs(feedbackControlSignal)) / max(snap.signals.values);
plot(snap.time,ratio31*snap.signals.values,'DisplayName','scaled snap','LineWidth',2);
%%
 errorTuned = Err;
%%
plotError(Err.time,Err.signals.values*1e9,'tracking error under ideal feedforward');
xlim([acc.time(1),acc.time(end)]);
hold on;
plot(errorTuned.time,errorTuned.signals.values*1e9,'linewidth',2,'displayname','tracking error under tuned feedforward','linestyle','--');
legend1 = legend(gca,'show');
legend1.FontSize = 10;


%% 绘制位移误差
plotError(Err.time,Err.signals.values*1e9,'tracking error');
xlim([acc.time(1),acc.time(end)]);
hold on;
temp1=max(abs(Err.signals.values*1e9));
temp2=max(abs(acc.signals.values));
temp3=max(abs(snap.signals.values));
temp4=max(abs(jerk.signals.values));
ratio=temp1/temp2;
ratio31=temp1/temp3;
ratio41 = temp1/temp4;
plot(acc.time,ratio*acc.signals.values,'DisplayName','scaled acceleration','LineWidth',2);
% plot(snap.time,ratio31*snap.signals.values,'DisplayName','scaled snap','LineWidth',2);
% plot(jerk.time,ratio41*jerk.signals.values,'DisplayName','scaled jerk','LineWidth',2);
% plot(jerk.time,ratio41*jerk.signals.values,'DisplayName','scaled jerk','LineWidth',2,'linestyle','--');
legend1 = legend(gca,'show');
% set(legend1,'FontName','Times New Roman');
% xlim([0,0.18]);
% axis tight;
%% 绘制控制信号
figure;
plot(ufb.time,ufb.signals.values,'displayname','feedback control signal','linewidth',2);
xlim([ufb.time(1),ufb.time(end)]);
hold on;
temp1=max(abs(ufb.signals.values));
temp2=max(abs(acc.signals.values));
temp3=max(abs(snap.signals.values));
temp4=max(abs(jerk.signals.values));
ratio=temp1/temp2;
ratio31=temp1/temp3;
ratio41 = temp1/temp4;
% plot(snap.time,ufbF,'linewidth',2,'DisplayName','filtered feedback control signal');
% plot(acc.time,ratio*acc.signals.values,'DisplayName','scaled acceleration','LineWidth',2,'linestyle','--');
plot(acc.time,ratio*acc.signals.values,'DisplayName','scaled acceleration','LineWidth',2);
% plot(snap.time,ratio31*snap.signals.values,'DisplayName','scaled snap','LineWidth',2);
% plot(jerk.time, ratio41*jerk.signals.values,'DisplayName','scaled jerk','LineWidth',2);

legend1 = legend(gca,'show');
xlabel('time (s)','fontsize',20);
h = ylabel('control signal (N)','fontsize',20);
set(gca,'fontsize',16);
% h.Interpreter = 'latex';

%% 绘制理想前馈信号
jerkScale = 50;
snapScale = 1000;
figure;
plot(idealAccFF.Time,idealAccFF.Data,'linewidth',2,'displayname','u_{ff-acc}');
hold on;
plot(idealJerkFF.Time,jerkScale * idealJerkFF.Data,'linewidth',2,'displayname','50 * u_{ff-jerk}');
plot(idealSnapFF.Time,snapScale * idealSnapFF.Data,'linewidth',2,'displayname','1000 * u_{ff-snap}');

ylabel('control effort (N)');
xlabel('time (s)');
legend show;
set(gca,'fontsize',14);
axis tight;

%% plot gap between ideal ff and tuned ff
figure;
plot(gapAccFF.Time,gapAccFF.Data,'linewidth',2,'displayname','acc ff gap');
hold on;
plot(gapJerkFF.Time, gapJerkFF.Data,'linewidth',2,'displayname','jerk ff gap');
plot(gapSnapFF.Time, gapSnapFF.Data,'linewidth',2,'displayname','snap ff gap');

ylabel('control effort (N)');
xlabel('time (s)');
legend show;
set(gca,'fontsize',14);
axis tight;



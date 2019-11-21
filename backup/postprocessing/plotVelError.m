function plotError(time,data,label)

% 创建 plot
figure;
h=plot(time,data,'DisplayName',label,'LineWidth',2);
% h.DisplayName=label;
% h.LineWidth=2;

% 创建 xlabel
% xlabel('$Time\left( s \right)$ ','Interpreter','latex','FontSize',20);
% xlabel('time(s)','FontSize',20,'FontName','Times New Roman');
xlabel('time (s)','FontSize',20);

% 创建 title
% title('控制误差');

% 创建 ylabel
% ylabel('$e\left( nm \right)$','Interpreter','latex','FontSize',20);
ylabel('velocity error (mm/s)','FontSize',20);

% 设置其余坐标轴属性
set(gca,'FontSize',16);
% legend(gca,'show');
% hold on;

end
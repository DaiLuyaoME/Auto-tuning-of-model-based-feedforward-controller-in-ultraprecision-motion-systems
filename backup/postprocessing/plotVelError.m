function plotError(time,data,label)

% ���� plot
figure;
h=plot(time,data,'DisplayName',label,'LineWidth',2);
% h.DisplayName=label;
% h.LineWidth=2;

% ���� xlabel
% xlabel('$Time\left( s \right)$ ','Interpreter','latex','FontSize',20);
% xlabel('time(s)','FontSize',20,'FontName','Times New Roman');
xlabel('time (s)','FontSize',20);

% ���� title
% title('�������');

% ���� ylabel
% ylabel('$e\left( nm \right)$','Interpreter','latex','FontSize',20);
ylabel('velocity error (mm/s)','FontSize',20);

% ������������������
set(gca,'FontSize',16);
% legend(gca,'show');
% hold on;

end
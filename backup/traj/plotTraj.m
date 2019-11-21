function plotTraj(ts1, getcolumn1, getcolumn2, getcolumn3, getcolumn4, getcolumn5)
%CREATEFIGURE(TS1, GETCOLUMN1, GETCOLUMN2, GETCOLUMN3, GETCOLUMN4, GETCOLUMN5)
%  TS1:  x ���ݵ�ʸ��
%  GETCOLUMN1:  y ���ݵ�ʸ��
%  GETCOLUMN2:  y ���ݵ�ʸ��
%  GETCOLUMN3:  y ���ݵ�ʸ��
%  GETCOLUMN4:  y ���ݵ�ʸ��
%  GETCOLUMN5:  stairs y

%  �� MATLAB �� 12-Mar-2018 21:37:40 �Զ�����

% ���� figure
figure1 = figure;

% ���� subplot
subplot1 = subplot(2,3,1,'Parent',figure1);
hold(subplot1,'on');

% ���� plot
plot(ts1,getcolumn1,'Parent',subplot1,'DisplayName','dis','LineWidth',2,...
    'Color',[0 0 1]);

% ���� xlabel
xlabel('time (s)');

% ���� ylabel
ylabel('dis (mm)');
axis tight;
% ȡ�������е�ע���Ա���������� X ��Χ
% xlim(subplot1,[0 0.3]);
% ȡ�������е�ע���Ա���������� Y ��Χ
% ylim(subplot1,[-0.00299999999997336 0.0629999999994405]);
% ������������������
% set(subplot1,'FontSize',20,'XGrid','on',...
%     'YGrid','on','YTickLabel',{'0','20','40','60'});
set(subplot1,'FontSize',20,'XGrid','on',...
    'YGrid','on');
% ���� legend
% legend1 = legend(subplot1,'show');
% set(legend1,'Interpreter','none');

% ���� subplot
subplot2 = subplot(2,3,2,'Parent',figure1);
hold(subplot2,'on');

% ���� plot
plot(ts1,getcolumn2,'Parent',subplot2,'DisplayName','vel','LineWidth',2,...
    'Color',[0 0 1]);
% axis tight;
% ���� xlabel
xlabel('time (s)');

% ���� ylabel
ylabel('vel (mm/s)');
axis tight;
% ȡ�������е�ע���Ա���������� X ��Χ
% xlim(subplot2,[0 0.3]);
% ȡ�������е�ע���Ա���������� Y ��Χ
% ylim(subplot2,[-0.0125000000168535 0.262500000000627]);
% ������������������
% set(subplot2,'FontSize',20,'XGrid','on',...
%     'YGrid','on','YTickLabel',{'0','100','200'});
set(subplot2,'FontSize',20,'XGrid','on',...
    'YGrid','on');
% ���� legend
% legend2 = legend(subplot2,'show');
% set(legend2,'Interpreter','none');

% ���� subplot
subplot3 = subplot(2,3,3,'Parent',figure1);
hold(subplot3,'on');

% ���� plot
plot(ts1,getcolumn3,'Parent',subplot3,'DisplayName','acc','LineWidth',2,...
    'Color',[0 0 1]);
% axis tight;
% ���� xlabel
% ylim([-10,10]);
xlabel('time (s)');

% ���� ylabel
ylabel('acc (m/s^2)');
axis tight;
% ȡ�������е�ע���Ա���������� X ��Χ
% xlim(subplot3,[0 0.3]);
% ȡ�������е�ע���Ա���������� Y ��Χ
% ylim(subplot3,[-11.0000000000416 10.9999999999984]);
% ������������������
set(subplot3,'FontSize',20,'XGrid','on',...
    'YGrid','on');
% ���� legend
% legend3 = legend(subplot3,'show');
% set(legend3,'Interpreter','none');

% ���� subplot
subplot4 = subplot(2,3,4,'Parent',figure1);
hold(subplot4,'on');

% ���� plot
plot(ts1,getcolumn4,'Parent',subplot4,'DisplayName','jerk','LineWidth',2,...
    'Color',[0 0 1]);

% ���� xlabel
xlabel('time (s)');

% ���� ylabel
ylabel('jerk (m/s^3)');
axis tight;
% ȡ�������е�ע���Ա���������� X ��Χ
% xlim(subplot4,[0 0.3]);
% ȡ�������е�ע���Ա���������� Y ��Χ
% ylim(subplot4,[-880.00000000036 879.999999999876]);
% ������������������
set(subplot4,'FontSize',20,'XGrid','on',...
    'YGrid','on');
% ���� legend
% legend4 = legend(subplot4,'show');
% set(legend4,'Interpreter','none');

% ���� subplot
subplot5 = subplot(2,3,5,'Parent',figure1);
hold(subplot5,'on');

% ���� stairs
stairs(ts1,getcolumn5,'DisplayName','snap','Parent',subplot5,'LineWidth',2,...
    'Color',[0 0 1]);

% ���� xlabel
xlabel('time (s)');

% ���� ylabel
ylabel('snap (m/s^4)');
axis tight;
% ȡ�������е�ע���Ա���������� X ��Χ
% xlim(subplot5,[0 0.3]);
% ȡ�������е�ע���Ա���������� Y ��Χ
% ylim(subplot5,[-70400 70400]);
% ������������������
set(subplot5,'FontSize',20,'XGrid','on',...
    'YGrid','on');
% ���� legend
% legend5 = legend(subplot5,'show');
% set(legend5,'Interpreter','none');


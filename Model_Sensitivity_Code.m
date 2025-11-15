clc;clear all;close all;

% For generating sensitivity for the Data replace Model with Data
S1=readmatrix('Model_Sens_Mean AR(1).csv');
S2=readmatrix('Model_Sens_Max AR(1).csv');
S3=readmatrix('Model_Sens_Mean SD.csv');
S4=readmatrix('Model_Sens_Max SD.csv');
S5=readmatrix('Model_Sens_Eigen MAF.csv');
S6=readmatrix('Model_Sens_MAF AR(1).csv');
S7=readmatrix('Model_Sens_Maf SD.csv');
S8=readmatrix('Model_Sens_PCA AR(1).csv');
S9=readmatrix('Model_Sens_PCA SD.csv');
S10=readmatrix('Model_Sens_Eigen Cov.csv');
S11=readmatrix('Model_Sens_Max Cov.csv');
S12=readmatrix('Model_Sens_MI.csv');


figure('Position',[396,551,1196,315]);
tiledlayout(2,6,"TileSpacing","compact","Padding","compact");

% 1- Mean AR(1)
nexttile;
contourf(S1,200,'LineColor','non');hold on;
contour(S1,'LineColor','k','Linewidth',0.85);hold on;
colormap(jet(60));
clim([-1 1]);
xlim([2 62]);
xline(62,'LineWidth',1.5,'Color','k','Alpha',1);
yline(96,'LineWidth',1.5,'Color','k','Alpha',1);
xticks([2 32 62]);xticklabels({});
yticks([1 46 96]);yticklabels({'5', '50', '100'});ylabel('Bandwidth');
set(gca,'Linewidth',1.5,'Fontweight','bold','Fontsize',11,'tickdir', 'out','box', 'off');
ax = gca;
ax.XColor='k';ax.YColor='k';ax.TickLength = [0.02 0.02];
title('Mean AR(1)')
plot(52,51,'Marker','v','MarkerEdgeColor','auto','MarkerFaceColor','auto','MarkerSize',9);

% 2 - Max AR(1)
nexttile;
contourf(S2,200,'LineColor','non');hold on;
contour(S2,'LineColor','k','Linewidth',0.85);
colormap(jet(60));
clim([-1 1]);
xlim([2 62]);
xline(62,'LineWidth',1.5,'Color','k','Alpha',1);
yline(96,'LineWidth',1.5,'Color','k','Alpha',1);
xticks([2 32 62]);xticklabels({});
yticks([1 46 96]);yticklabels({});
set(gca,'Linewidth',1.5,'Fontweight','bold','Fontsize',11,'tickdir', 'out','box', 'off');
ax = gca;
ax.XColor='k';ax.YColor='k';ax.TickLength = [0.02 0.02];
plot(52,51,'Marker','v','MarkerEdgeColor','auto','MarkerFaceColor','auto','MarkerSize',9);
title('Max AR(1)');

% 3 - Mean SD
nexttile;
contourf(S3,200,'LineColor','non');hold on;
contour(S3,'LineColor','k','Linewidth',0.85);
colormap(jet(60));
clim([-1 1]);
xlim([2 62]);
xline(62,'LineWidth',1.5,'Color','k','Alpha',1);
yline(96,'LineWidth',1.5,'Color','k','Alpha',1);
xticks([2 32 62]);xticklabels({});
yticks([1 46 96]);yticklabels({});
set(gca,'Linewidth',1.5,'Fontweight','bold','Fontsize',11,'tickdir', 'out','box', 'off');
ax = gca;
ax.XColor='k';ax.YColor='k';ax.TickLength = [0.02 0.02];
plot(52,51,'Marker','v','MarkerEdgeColor','auto','MarkerFaceColor','auto','MarkerSize',9);
title('Mean SD');

% 4 - Max SD
nexttile;
contourf(S4,200,'LineColor','non');hold on;
contour(S4,'LineColor','k','Linewidth',0.85);
colormap(jet(60));
clim([-1 1]);
xlim([2 62]);
xline(62,'LineWidth',1.5,'Color','k','Alpha',1);
yline(96,'LineWidth',1.5,'Color','k','Alpha',1);
xticks([2 32 62]);xticklabels({});
yticks([1 46 96]);yticklabels({});
set(gca,'Linewidth',1.5,'Fontweight','bold','Fontsize',11,'tickdir', 'out','box', 'off');
ax = gca;
ax.XColor='k';ax.YColor='k';ax.TickLength = [0.02 0.02];
plot(52,51,'Marker','v','MarkerEdgeColor','auto','MarkerFaceColor','auto','MarkerSize',9);
title('Max SD');


% 5 - Eigen MAF
nexttile;
contourf(S5,200,'LineColor','non');hold on;
contour(S5,'LineColor','k','Linewidth',0.85);
colormap(jet(60));
clim([-1 1]);
xlim([2 62]);
xline(62,'LineWidth',1.5,'Color','k','Alpha',1);
yline(96,'LineWidth',1.5,'Color','k','Alpha',1);
xticks([2 32 62]);xticklabels({});
yticks([1 46 96]);yticklabels({});
set(gca,'Linewidth',1.5,'Fontweight','bold','Fontsize',11,'tickdir', 'out','box', 'off');
ax = gca;
ax.XColor='k';ax.YColor='k';ax.TickLength = [0.02 0.02];
plot(52,51,'Marker','v','MarkerEdgeColor','auto','MarkerFaceColor','auto','MarkerSize',9);
title('Eigen MAF');


% 6 - MAF AR(1)
nexttile;
contourf(S6,200,'LineColor','non');hold on;
contour(S6,'LineColor','k','Linewidth',0.85);
colormap(jet(60));
cb=colorbar('Ticks',[-1 -0.5  0 0.5 1],'TickLabels',({'-1','-0.5', '0', '0.5', '1'}),'Location','eastoutside');
cb.Label.String = 'Kendall''s \tau';
cb.Label.FontSize = 10;
cb.Label.FontWeight = 'bold';
clim([-1 1]);
xlim([2 62]);
xline(62,'LineWidth',1.5,'Color','k','Alpha',1);
yline(96,'LineWidth',1.5,'Color','k','Alpha',1);
xticks([2 32 62]);xticklabels({});
yticks([1 46 96]);yticklabels({});
set(gca,'Linewidth',1.5,'Fontweight','bold','Fontsize',11,'tickdir', 'out','box', 'off');
ax = gca;
ax.XColor='k';ax.YColor='k';ax.TickLength = [0.02 0.02];
title('MAF AR(1)');
plot(52,51,'Marker','v','MarkerEdgeColor','auto','MarkerFaceColor','auto','MarkerSize',9);

% 7 - MAF SD
nexttile;
contourf(S7,200,'LineColor','non');hold on;
contour(S7,'LineColor','k','Linewidth',0.85);
colormap(jet(60));
clim([-1 1]);
xlim([2 62]);
xline(62,'LineWidth',1.5,'Color','k','Alpha',1);
yline(96,'LineWidth',1.5,'Color','k','Alpha',1);
xticks([2 32 62]);xticklabels({'20', '50', '80'});
yticks([1 46 96]);yticklabels({'5', '50', '100'});ylabel('Bandwidth');
set(gca,'Linewidth',1.5,'Fontweight','bold','Fontsize',11,'tickdir', 'out','box', 'off');
ax = gca;
ax.XColor='k';ax.YColor='k';ax.TickLength = [0.02 0.02];
plot(52,51,'Marker','v','MarkerEdgeColor','auto','MarkerFaceColor','auto','MarkerSize',9);
title('MAF SD');xlabel('Moving window (%)');

% 8 - PCA AR(1)
nexttile;
contourf(S8,200,'LineColor','non');hold on;
contour(S8,'LineColor','k','Linewidth',0.85);
colormap(jet(60));
clim([-1 1]);
xlim([2 62]);
xline(62,'LineWidth',1.5,'Color','k','Alpha',1);
yline(96,'LineWidth',1.5,'Color','k','Alpha',1);
xticks([2 32 62]);xticklabels({'20', '50', '80'});
yticks([1 46 96]);yticklabels({});
set(gca,'Linewidth',1.5,'Fontweight','bold','Fontsize',11,'tickdir', 'out','box', 'off');
ax = gca;
ax.XColor='k';ax.YColor='k';ax.TickLength = [0.02 0.02];
plot(52,51,'Marker','v','MarkerEdgeColor','auto','MarkerFaceColor','auto','MarkerSize',9);
title('PCA AR(1)');



% 9 - PCA SD
nexttile;
contourf(S9,200,'LineColor','non');hold on;
contour(S9,'LineColor','k','Linewidth',0.85);
colormap(jet(60));
clim([-1 1]);
xlim([2 62]);
xline(62,'LineWidth',1.5,'Color','k','Alpha',1);
yline(96,'LineWidth',1.5,'Color','k','Alpha',1);
xticks([2 32 62]);xticklabels({'20', '50', '80'});
yticks([1 46 96]);yticklabels({});
set(gca,'Linewidth',1.5,'Fontweight','bold','Fontsize',11,'tickdir', 'out','box', 'off');
ax = gca;
ax.XColor='k';ax.YColor='k';ax.TickLength = [0.02 0.02];
plot(52,51,'Marker','v','MarkerEdgeColor','auto','MarkerFaceColor','auto','MarkerSize',9);
title('PCA SD');

% 10 - Eigen Cov
nexttile;
contourf(S10,200,'LineColor','non');hold on;
contour(S10,'LineColor','k','Linewidth',0.85);
colormap(jet(60));
clim([-1 1]);
xlim([2 62]);
xline(62,'LineWidth',1.5,'Color','k','Alpha',1);
yline(96,'LineWidth',1.5,'Color','k','Alpha',1);
xticks([2 32 62]);xticklabels({'20', '50', '80'});
yticks([1 46 96]);yticklabels({});
set(gca,'Linewidth',1.5,'Fontweight','bold','Fontsize',11,'tickdir', 'out','box', 'off');
ax = gca;
ax.XColor='k';ax.YColor='k';ax.TickLength = [0.02 0.02];
plot(52,51,'Marker','v','MarkerEdgeColor','auto','MarkerFaceColor','auto','MarkerSize',9);
title('Eigen Cov');

% 11 - Max CoV
nexttile;
contourf(S11,200,'LineColor','non');hold on;
contour(S11,'LineColor','k','Linewidth',0.85);
colormap(jet(60));
clim([-1 1]);
xlim([2 62]);
xline(62,'LineWidth',1.5,'Color','k','Alpha',1);
yline(96,'LineWidth',1.5,'Color','k','Alpha',1);
xticks([2 32 62]);xticklabels({'20', '50', '80'});xlabel('Moving window (%)');
yticks([1 46 96]);yticklabels({});
set(gca,'Linewidth',1.5,'Fontweight','bold','Fontsize',11,'tickdir', 'out','box', 'off');
ax = gca;
ax.XColor='k';ax.YColor='k';ax.TickLength = [0.02 0.02];
plot(52,51,'Marker','v','MarkerEdgeColor','auto','MarkerFaceColor','auto','MarkerSize',9);
title('Max Cov');

% 12 - MI
nexttile;
contourf(S12,100,'LineColor','non');hold on;
contour(S12,'LineColor','k','Linewidth',0.85);
colormap(jet(60));
clim([-1 1]);
xlim([2 62]);
xline(62,'LineWidth',1.5,'Color','k','Alpha',1);
yline(96,'LineWidth',1.5,'Color','k','Alpha',1);
xticks([2 32 62]);xticklabels({'20', '50', '80'});
yticks([1 46 96]);yticklabels({});
set(gca,'Linewidth',1.5,'Fontweight','bold','Fontsize',11,'tickdir', 'out','box', 'off');
ax = gca;
ax.XColor='k';ax.YColor='k';ax.TickLength = [0.02 0.02];
plot(52,51,'Marker','v','MarkerEdgeColor','auto','MarkerFaceColor','auto','MarkerSize',9);
title('MI');
% This code is generated for Taniyama, Shibue, and Yanagisawa, 2024.
% Indicator of judgment of agency
% ds: prediction error for self
% do: prediction error for other
% sps: prediction variance (reciprocal of precision) for self
% spo: prediction variance (reciprocal of precision) for other
% sl: observation variance
% p: prior for agent
f = @(ds,do,sps,spo,sl,p) 1./sqrt(2.*pi.*(sps+sl)).*exp(-ds.^2./(2.*(sps+sl))).*p./(1./sqrt(2.*pi.*(sps+sl)).*exp(-ds.^2./(2.*(sps+sl))).*p+1./sqrt(2.*pi.*(spo+sl)).*exp(-do.^2./(2.*(spo+sl))).*(1-p));

ds = 0:0.1:2;

do=1;
sps=0;
spo=1;
sl=0.8;
p=0.5;
P1 = f(ds,do,0,spo,sl,p);
P2 = f(ds,do,0.2,spo,sl,p);
P3 = f(ds,do,0.4,spo,sl,p);
P4 = f(ds,do,0.6,spo,sl,p);
P5 = f(ds,do,0.8,spo,sl,p);
P6 = f(ds,do,1,spo,sl,p);

P7 = f(ds,do,sps,spo,0,p);
P8 = f(ds,do,sps,spo,0.2,p);
P9 = f(ds,do,sps,spo,0.4,p);
P10 = f(ds,do,sps,spo,0.6,p);
P11 = f(ds,do,sps,spo,0.8,p);
P12 = f(ds,do,sps,spo,1,p);

plot(ds,P1);
hold on;
plot(ds,P2);
hold on;
plot(ds,P3);
hold on;
plot(ds,P4);
hold on;
plot(ds,P5);
hold on;
plot(ds,P6);
hold off;

xlabel('prediction error $|\mu_{s}-\mu_{l}|$','Interpreter','latex','FontSize', 18);
ylabel('judgment of agency $p(C=self|y)$','Interpreter','latex','FontSize', 18);
legend('$\sigma_{s}^2=0$','$\sigma_{s}^2=0.2$','$\sigma_{s}^2=0.4$','$\sigma_{s}^2=0.6$','$\sigma_{s}^2=0.8$','$\sigma_{s}^2=1$','Interpreter','latex','FontSize', 18);
xlim([0 2]);
ylim([0 1]);
lgd = legend;
lgd.FontSize = 18;
lgd.Title.String = 'prediction precision';

figure
plot(ds,P7);
hold on;
plot(ds,P8);
hold on;
plot(ds,P9);
hold on;
plot(ds,P10);
hold on;
plot(ds,P11);
hold on;
plot(ds,P12);
hold off;

xlabel('prediction error $|\mu_{s}-\mu_{l}|$','Interpreter','latex','FontSize', 18);
ylabel('judgment of agency $p(C=self|y)$','Interpreter','latex','FontSize', 18);
legend('$\sigma_{l}^2=0$','$\sigma_{l}^2=0.2$','$\sigma_{l}^2=0.4$','$\sigma_{l}^2=0.6$','$\sigma_{l}^2=0.8$','$\sigma_{l}^2=1$','Interpreter','latex','FontSize', 18);
xlim([0 2]);
ylim([0 1]);
lgd = legend;
lgd.FontSize = 18;
lgd.Title.String = 'observation precision';

do = 0:0.1:2;

ds=1;
sps=1;
spo=1;
sl=1;
p=0.5;
P1 = f(ds,do,sps,0,sl,p);
P2 = f(ds,do,sps,0.2,sl,p);
P3 = f(ds,do,sps,0.4,sl,p);
P4 = f(ds,do,sps,0.6,sl,p);
P5 = f(ds,do,sps,0.8,sl,p);
P6 = f(ds,do,sps,1,sl,p);

P7 = f(ds,do,sps,spo,0,p);
P8 = f(ds,do,sps,spo,0.2,p);
P9 = f(ds,do,sps,spo,0.4,p);
P10 = f(ds,do,sps,spo,0.6,p);
P11 = f(ds,do,sps,spo,0.8,p);
P12 = f(ds,do,sps,spo,1,p);

figure
plot(do,P1);
hold on;
plot(do,P2);
hold on;
plot(do,P3);
hold on;
plot(do,P4);
hold on;
plot(do,P5);
hold on;
plot(do,P6);
hold off;

xlabel('$|\mu_{o}-y|$','Interpreter','latex','FontSize', 18);
ylabel('$p(C=self|y)$','Interpreter','latex','FontSize', 18);
legend('$\sigma_{o}^2=0$','$\sigma_{o}^2=0.2$','$\sigma_{o}^2=0.4$','$\sigma_{o}^2=0.6$','$\sigma_{o}^2=0.8$','$\sigma_{o}^2=1$','Interpreter','latex','FontSize', 18);
xlim([0 2]);
ylim([0 1]);

figure
plot(do,P7);
hold on;
plot(do,P8);
hold on;
plot(do,P9);
hold on;
plot(do,P10);
hold on;
plot(do,P11);
hold on;
plot(do,P12);
hold off;

xlabel('$|\mu_{o}-y|$','Interpreter','latex','FontSize', 18);
ylabel('$p(C=self|y)$','Interpreter','latex','FontSize', 18);
legend('$\sigma_{l}^2=0$','$\sigma_{l}^2=0.2$','$\sigma_{l}^2=0.4$','$\sigma_{l}^2=0.6$','$\sigma_{l}^2=0.8$','$\sigma_{l}^2=1$','Interpreter','latex','FontSize', 18);
xlim([0 2]);
ylim([0 1]);

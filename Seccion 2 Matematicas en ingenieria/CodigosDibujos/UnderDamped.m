x = linspace(0, 50, 10000);
y = exp(-0.1*x).*(5 * cos(1*x) - 2*sin(1*x));

figure
hold on
#axis([0, 50, -5, 5])
#set(gca,'XTick',[-2*pi, -pi, 0 , pi, 2*pi])
#set(gca,'XTicklabel', {'-2$\pi$ ' '-$\pi$' '0'  '$\pi$' '2$\pi$'} )
#set(gca, 'fontsize', 30)
#set(gca,'YTick',[-10, 0, 10])
#set(gca, "xgrid", "on")
grid off
plot(x,y, 'linewidth', 3, 'color', 'blue')
print('UnderDamped.tex','-dtex');

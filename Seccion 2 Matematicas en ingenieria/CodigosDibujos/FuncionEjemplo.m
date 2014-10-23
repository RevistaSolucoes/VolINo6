x = linspace(-3*pi, 3*pi, 1000);
y = 10*cos(x) + sin(20*x);

figure
hold on
axis([-3*pi, 3*pi, -12, 12])
set(gca,'XTick',[-2*pi, -pi, 0 , pi, 2*pi])
set(gca,'XTicklabel', {'-2$\pi$ ' '-$\pi$' '0'  '$\pi$' '2$\pi$'} )
set(gca, 'fontsize', 30)
set(gca,'YTick',[-10, 0, 10])
#set(gca, "xgrid", "on")
grid off
plot(x,y, 'linewidth', 1, 'color', 'blue')
print('FuncionEjemplo.tex','-dtex');

x = linspace(0, 200, 10000);

yp = sin(0.3*x) + 1/2 * sin(2*0.3*x) + 1/3 * sin(3*0.3*x) + 1/4 * sin(4*0.3*x) + 1/5 * sin(5*0.3*x) + 1/6 * sin(6*0.3*x);
yh = 0.4*exp(-0.06*x).*(1+3*x);
y  = yp + yh;

figure
hold on
#axis([0, 50, -5, 5])
#set(gca,'XTick',[-2*pi, -pi, 0 , pi, 2*pi])
#set(gca,'XTicklabel', {'-2$\pi$ ' '-$\pi$' '0'  '$\pi$' '2$\pi$'} )
#set(gca, 'fontsize', 30)
#set(gca,'YTick',[-10, 0, 10])
#set(gca, "xgrid", "on")
grid off
plot(x,y, 'linewidth', 3, 'color', 'blue', x, yh, '--')
print('SumaSoluciones.tex','-dtex');

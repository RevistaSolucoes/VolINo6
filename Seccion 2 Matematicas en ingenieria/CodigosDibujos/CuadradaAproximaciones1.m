x = linspace(-3*pi, 3*pi, 10000);
y=ones(1,10000);
for i=1:9999
	y(i) = rem ((-1)^(floor(i*6/10000)+1), 2);
endfor
yAprox = 4/pi * sin(x);

figure
hold on
axis([-3*pi, 3*pi, -1.4, 1.4])
set(gca,'XTick',[-2*pi, -pi, 0 , pi, 2*pi])
set(gca,'XTicklabel', {'-2$\pi$ ' '-$\pi$' '0'  '$\pi$' '2$\pi$'} )
set(gca, 'fontsize', 30)
set(gca,'YTick',[-1, 0, 1])
grid
plot(x,y, 'linewidth', 3, 'color', 'black', x,yAprox, 'linewidth', 3, 'color', 'blue');
print('CuadradaAproximaciones1.tex','-dtex');

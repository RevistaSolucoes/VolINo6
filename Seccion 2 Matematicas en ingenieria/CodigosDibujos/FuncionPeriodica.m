periodos = 3; #que sea un num impar
periodo  = 30;
x0 = linspace(-45, -15, 3000);
for i=1:periodos
	x(i, :) = x0 + (i-1)*periodo;
endfor

y0= exp(-0.1*x0).*sin(x0);
a = exp(-0.1*-45).*sin(-45);

figure
hold on
axis([-50, 50, -85, 85])

set(gca, 'fontsize', 30)

set(gca,'XTick',[-45, -15 , 15, 45])
set(gca,'XTicklabel', {'-$T$ ' '0' 'T'  '2$T$'} )

set(gca,'YTick',[-a, a])
set(gca,'YTicklabel', {' ' ' '} )
set(gca, "xgrid", "on")
#grid off


for i=1:periodos
	color = 'black';
	if (2*i == periodos + 1)
		color = 'blue';
	endif
	plot(x(i, :),y0, 'linewidth', 3, 'color', color);
endfor

print('FuncionPeriodica.tex','-dtex');

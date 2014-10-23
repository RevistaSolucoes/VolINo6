x = linspace(0, 5, 1000);
y = 1./sqrt((1-x.^2).^2 + 0.02*x.^2);

figure
hold on
#axis([0, 50, -5, 5])
set(gca,'XTick',[1])
set(gca,'XTicklabel', {'$\omega_r$'} )
set(gca, 'fontsize', 30)
#set(gca,'YTick',[-10, 0, 10])
#set(gca, "xgrid", "on")
grid off
plot(x,y, 'linewidth', 3, 'color', 'blue')
print('Resonancia.tex','-dtex');

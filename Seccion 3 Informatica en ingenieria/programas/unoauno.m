figure
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
% Lampara
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%

[x,y,z]=cylinder(3);
surf(x,y,z);
hold on
[x,y]=meshgrid(0:0.1:2*pi);
[x,y]=meshgrid(0:0.1:2*pi,-3:0.1:0);
surf(sin(x),cos(x),y);
sphere(50);
[x,y]=meshgrid(-5:0.1:5,-5:0.1:5);
z=0*x+0*y;
surf(x,y,z-3);
print('lampara','-dpdf')
hold off

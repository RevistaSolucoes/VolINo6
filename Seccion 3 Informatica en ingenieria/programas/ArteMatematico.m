%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Arte con Octave
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
% Casco Romano
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
title('Casco romano')
[x y]=meshgrid(-1.5:0.01:1.5,-0.7:0.01:0);
mesh(sin(x),cos(x),y);
hold on
[theta r]=meshgrid(0:0.01:2*pi,0:0.01:1);
x=r.*cos(theta);
y=r.*sin(theta);
z=sqrt(1-x.^2-y.^2).*(x.^2+y.^2<1);
%mesh(x,y,z);
[x y]=meshgrid(-0.3:0.01:0,0.5:0.01:1.5);
surf(sin(x)/2,cos(x)/2,y);
surf(-sin(x)/2,cos(x)/2,y);
surf(-sin(x)/2,-cos(x)/2,y);
surf(sin(x)/2,-cos(x)/2,y);
[y z]=meshgrid(-0.5:0.01:0.5,0.3:0.01:1.5);
x=y.*0+z.*0+0.15;
x1=y.*0+z.*0-0.15;
mesh(x,y,z);
mesh(x1,y,z);
[x y]=meshgrid(-1.8:0.01:1.8,-0.1:0.01:-0.4);
mesh(sin(x),-cos(x).*y+0.3,y);
[x y]=meshgrid(-0.3:0.01:0.3,-1:0.01:1.5);
z1=sin(x);
z2=y;
z3=cos(y)+0.6;
mesh(z1,z2,z3);
ddz1=-sin(x);
ddz2=0+0.*x+0.*y;
ddz3=-cos(y);
quiver3(z1,z2,z3,-ddz1,-ddz2,-ddz3,1);
print('cascoromano','-dpdf')
hold off

return
figure
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
% Pingüino
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
title('Pingüino')
[x,y,z]=sphere(16);
surf(x,y,z,"facecolor","black")
hold on
surf(x,y,z,"facecolor", "black")
surf(x,y+2,z,"facecolor", "black")
surf(x,y+4,z,"facecolor", "black")
surf(x,y+6,z,"facecolor", "black")
surf(x,y+6,z-2,"facecolor", "black")
surf(x,y+8,z-2,"facecolor", "black")
surf(x,y,z-2,"facecolor", "black")
surf(x,y-2,z-2,"facecolor", "black")
surf(x,y-2,z-6,"facecolor", "black")
surf(x,y-2,z-4,"facecolor", "black")
surf(x,y+8,z-4,"facecolor", "black")
surf(x,y+8,z-6,"facecolor", "black")
surf(x,y-2,z-8,"facecolor", "black")
surf(x,y,z-8,"facecolor", "black")
surf(x,y+4,z-8,"facecolor", "black")
surf(x,y+6,z-8,"facecolor", "black")
surf(x,y+2,z-8,"facecolor", "black")
surf(x,y,z-6,"facecolor", "black")
surf(x,y+4,z-4,"facecolor", "black")
surf(x,y-2,z-10,"facecolor", "black")
surf(x,y-2,z-12,"facecolor", "black")
surf(x,y-2,z-14,"facecolor", "black")
surf(x,y-2,z-16,"facecolor", "black")
surf(x,y-4,z-12,"facecolor", "black")
surf(x,y-4,z-14,"facecolor", "black")
surf(x,y-4,z-16,"facecolor", "black")
surf(x,y-6,z-12,"facecolor", "black")
surf(x,y-6,z-14,"facecolor", "black")
surf(x,y-8,z-12,"facecolor", "black")
surf(x,y,z-8,"facecolor", "black")
surf(x,y,z-10,"facecolor", "black")
surf(x,y,z-12,"facecolor", "black")
surf(x,y,z-14,"facecolor", "black")
surf(x,y,z-16,"facecolor", "black")
surf(x,y,z-8,"facecolor", "black")
surf(x,y,z-10,"facecolor", "black")
surf(x,y,z-12,"facecolor", "black")
surf(x,y,z-14,"facecolor", "black")
surf(x,y-2,z-10,"facecolor", "black")
surf(x,y+10,z-4,"facecolor", "yellow")
surf(x,y-2,z-18,"facecolor", "black")
surf(x,y-2,z-20,"facecolor", "black")
surf(x,y-2,z-22,"facecolor", "black")
surf(x,y-4,z-18,"facecolor", "black")
surf(x,y-4,z-20,"facecolor", "black")
surf(x,y-6,z-18,"facecolor", "black")
surf(x,y+4,z-22,"facecolor","red")
surf(x,y+2,z-22,"facecolor","red")
surf(x,y+6,z-22,"facecolor","red")
surf(x,y,z-20,"facecolor","white")
surf(x,y,z-22,"facecolor","white")
surf(x,y+2,z-20,"facecolor","white")
surf(x,y,z-20,"facecolor","white")
surf(x,y,z-10,"facecolor", "black")
surf(x,y,z-12,"facecolor", "black")
surf(x,y,z-14,"facecolor", "black")
surf(x,y,z-16,"facecolor", "black")
surf(x,y,z-18,"facecolor", "black")
surf(x,y+2,z-20,"facecolor","white")
surf(x,y+2,z-10,"facecolor","white")
surf(x,y+2,z-12,"facecolor", "black")
surf(x,y+2,z-14,"facecolor", "black")
surf(x,y+2,z-16,"facecolor", "black")
surf(x,y+2,z-18,"facecolor","white")
surf(x,y+4,z-10,"facecolor","white")
surf(x,y+4,z-12,"facecolor","white")
surf(x,y+4,z-14,"facecolor","white")
surf(x,y+4,z-16,"facecolor","white")
surf(x,y+4,z-18,"facecolor","white")
surf(x,y+4,z-20,"facecolor","white")
surf(x,y+6,z-10,"facecolor","white")
surf(x,y+6,z-12,"facecolor","white")
surf(x,y+6,z-14,"facecolor","white")
surf(x,y+6,z-16,"facecolor","white")
surf(x,y+6,z-18,"facecolor","white")
surf(x,y+8,z-12,"facecolor","white")
surf(x,y+8,z-14,"facecolor","white")
surf(x,y+8,z-16,"facecolor","white")
[x y]=meshgrid(-2:0.1:2,-2:0.1:2);
z=(4-2*y.^2+3*x.^2)*exp(2-3*x.^2-(y.^2)/4)/400;
surf(x-8,y-9,z-23,"facecolor","blue")
surf(x-8,y+10,z-23,"facecolor","blue")
surf(x-8,y+5,z-23,"facecolor","blue")
surf(x-8,y-3,z-23,"facecolor","blue")
surf(x+6,y-9,z-23,"facecolor","blue")
surf(x+6,y+10,z-23,"facecolor","blue")
[x y]=meshgrid(-13:0.7:13,-13:0.7:13);
z=cos(x)/6+sin(y);
surf(x,y,z-23)
%print('pinguino','-dpdf')
hold off


%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
% Tren
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%

[x y]=meshgrid(0:0.1:1,0:0.1:1);
z=0*x+1;
surf(x,y,z);
hold on
[x y]=meshgrid(0:0.1:1,0:0.1:1);
z=0*x;
surf(x,y,z);
[y z]=meshgrid(0:0.1:1,0:0.1:1);
x=0*y+1;
surf(x,y,z)
[y z]=meshgrid(0:0.1:1,0:0.1:1);
x=0*y;
surf(x,y,z)
[x z]=meshgrid(0:0.1:1,0:0.1:1);
y=0*x;
surf(x,y,z);
[x z]=meshgrid(0:0.1:1,0:0.1:1);
y=0*x+1;
surf(x,y,z);
[x y]=meshgrid(0:0.1:1,0:0.1:0.5);
z=0*x+2;
surf(x,y,z);
[x y]=meshgrid(0:0.1:1,0:0.1:0.5);
z=0*x+1;
surf(x,y,z);
[y z]=meshgrid(0:0.1:0.5,1:0.1:2);
x=0*y+1;
surf(x,y,z)
[y z]=meshgrid(0:0.1:0.5,1:0.1:2);
x=0*y;
surf(x,y,z)
[x z]=meshgrid(0:0.1:1,1:0.1:2);
y=0*x;
surf(x,y,z);
[x z]=meshgrid(0:0.1:1,1:0.1:2);
y=0*x+0.5;
surf(x,y,z);
[x,y,z]=cylinder;
surf(x.*0.10+0.5,y.*0.10+0.2,z.*0.3+2)
[x,y,z]=sphere;
surf(x.*0.10+1,y.*0.10+0.2,z.*0.3)
[x,y,z]=sphere;
surf(x.*0.10+1,y.*0.10+0.8,z.*0.3)
[x,y,z]=sphere;
surf(x.*0.10,y.*0.10+0.2,z.*0.3)
[x,y,z]=sphere;
surf(x.*0.10,y.*0.10+0.8,z.*0.3)
[x y]=meshgrid(0:0.1:1,0:0.1:1);
z=0*x;
surf(x,y-2,z);
[y z]=meshgrid(0:0.1:1,0:0.1:1);
x=0*y+1;
surf(x,y-2,z)
[y z]=meshgrid(0:0.1:1,0:0.1:1);
x=0*y;
surf(x,y-2,z)
[x z]=meshgrid(0:0.1:1,0:0.1:1);
y=0*x;
surf(x,y-2,z);
[x z]=meshgrid(0:0.1:1,0:0.1:1);
y=0*x+1;
surf(x,y-2,z);
[x,y,z]=sphere;
surf(x.*0.10+1,y.*0.10-1.8,z.*0.3)
[x,y,z]=sphere;
surf(x.*0.10+1,y.*0.10-1.3,z.*0.3)
[x,y,z]=sphere;
surf(x.*0.10,y.*0.10-1.8,z.*0.3)
[x,y,z]=sphere;
surf(x.*0.10,y.*0.10-1.3,z.*0.3)
[x y]=meshgrid(0:0.1:1,0:0.1:1);
z=0*x+0.5;
surf(x,y-1,z);
[x,y,z]=sphere;
surf(x.*0.10+0.5,y.*0.10+0.2,z.*0.3+3)
[x,y,z]=sphere;
surf(x.*0.10+0.5,y.*0.10+0.1,z.*0.3+3.1)
[x,y,z]=sphere;
surf(x.*0.10+0.5,y.*0.10-0.1,z.*0.3+3)
[x,y,z]=sphere;
surf(x.*0.10+0.5,y.*0.10-0.8,z.*0.3+3)
[x,y,z]=sphere;
surf(x.*0.10+0.5,y.*0.10-1.3,z.*0.3+3)
print('tren','-dpdf')
hold off

figure
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
% Helado
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
[theta,r]=meshgrid(0:0.1:3*pi,0:0.1:1);
x=r.*cos(theta);
y=r.*sin(theta);
z=sqrt(x.^2+y.^2);
surf(x./2,y./2,z,"facecolor","yellow")
hold on
[x y z]=sphere;
surf(x./3-0.151,y./3-0.01,z./3+1.05,"facecolor","white")
surf(x./3-0.02,y./3-0.151,z./3+1.05,"facecolor","white")
surf(x./3+0.13,y./3+0.07,z./3+1.05,"facecolor","green")
print('helado','-dpdf')
hold off

figure
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
% Oso Panda
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%

[x,y,z]=sphere;
surf(x,y,z,"facecolor","black");
hold on
surf(x*(0.7)-0.4,y*(0.7),z*(0.8),"facecolor","white");
surf(x*(0.5),y*(0.5),z*(0.5)+1.3,"facecolor","white");
surf(x*(0.15)-0.33,y*(0.15)+0.2,z*(0.18)+1.4,"facecolor","black");
surf(x*(0.15)-0.33,y*(0.15)-0.2,z*(0.18)+1.4,"facecolor","black");
surf(x*(0.09)-0.4,y*(0.09)+0.2,z*(0.09)+1.4,"facecolor","white");
surf(x*(0.09)-0.4,y*(0.09)-0.2,z*(0.09)+1.4,"facecolor","white");
surf(x*(0.2),y*(0.2)+0.3,z*(0.2)+1.62,"facecolor","black");
surf(x*(0.2),y*(0.2)-0.3,z*(0.2)+1.62,"facecolor","black");
surf(x*(0.09)-0.4,y*(0.2),z*(0.09)+1.2,"facecolor","black");
surf(x*(0.1),y*(0.3)+1,z*(0.2)+0.4,"facecolor", "black");
surf(x*(0.1),y*(0.3)-1,z*(0.2)+0.4,"facecolor", "black");
surf(x*(0.3),y*(0.25)+0.5,z*(0.5)-1,"facecolor","black");
surf(x*(0.3),y*(0.25)-0.5,z*(0.5)-1,"facecolor","black");
print('panda','-dpdf')
hold off



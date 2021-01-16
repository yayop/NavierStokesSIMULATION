c = -1.5;
Nx = 500;
Nt = 1000;
xi = 0;
xf = 2*pi;
ti = 0;
tf = 5;
dx = (xf - xi) / (Nx - 1);
dt = (tf - ti) / (Nt - 1);
alpha = c*dt/dx;
x = xi:dx:xf;
u0 = sin(x);

for j = 1:1:Nt
    u = -alpha* (circshift(u0,1) - circshift(u0,0)) + u0;
    plot(x, u)
    ylim([-1,1])
    xlim([xi,xf])
    pause(0.04)
    u0 = u;
end
        
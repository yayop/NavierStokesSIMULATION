c = 1.5;
Nx = 800;
Nt = 1000;
xi = 0;
xf = 2*pi;
ti = 0;
tf = 5;
dx = (xf - xi) / (Nx - 1);
dt = (tf - ti) / (Nt - 1);
alpha = dt/dx;
x = xi:dx:xf;
u0 = sin(2*x).*cos(0.5*x);

for j = 1:1:Nt
    u = -alpha* u0.*(u0 - circshift(u0,-1)) + u0;
    plot(x, u, 'LineWidth', 4)
    ylim([-1,1])
    xlim([xi,xf])
    pause(0.09)
    u0 = u;
end
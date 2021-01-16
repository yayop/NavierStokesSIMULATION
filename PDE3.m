nu = 0.2;
Nx = 80;
Nt = 1000;
xi = -2;
xf = 2;
ti = 0;
tf = 5;
dx = (xf - xi) / (Nx - 1);
dt = (tf - ti) / (Nt - 1);
alpha = nu * dt / dx^2;
x = xi:dx:xf;
u0 = exp(-x.^2);

for j = 1:1:Nt
    u = alpha*(circshift(u0,+1) - 2*u0 + circshift(u0,-1)) + u0;
    plot(x, u, 'LineWidth', 4)
    ylim([-1,1])
    xlim([xi,xf])
    pause(0.09)
    u0 = u;
end
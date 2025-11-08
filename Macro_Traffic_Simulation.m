% k = density; u = velocity; q = flow
% Shankha Narayan Chattopadhyay; 08/11/2025
clearvars; close all; clc;

uf=30; T=10; km=0.2; L=32200; Tmax=19800; Nx=322; Nt=19800; k_0=0.01; sigma=0.05; c=11;

dx=L/Nx; dt=Tmax/Nt;

k=zeros(Nx+1,Nt+1);
q=zeros(Nx+1,Nt+1);
u=zeros(Nx+1,Nt+1);
ue=zeros(Nx+1,Nt+1);

k(:,1)=k_0;
ue(:,1)=uf.*((1+exp((k(:,1)/km-0.25)/0.06)).^(-1)-372e-8);
u(:,1)=ue(:,1);

for j=1:Nt
    for i=2:Nx
        if j<=7200
            k(i,j+1)=k(i,j)+dt*k(i,j)*(u(i,j)-u(i+1,j))/dx+dt*u(i,j)*(k(i-1,j)-k(i,j))/dx;
        else
            ramp=(0.044-0.01);
            k(i,j+1)=k(i,j)+dt*k(i,j)*(u(i,j)-u(i+1,j))/dx+dt*u(i,j)*(k(i-1,j)-k(i,j))/dx+ramp*(j-7200)/(3*3600)-ramp*(j-1-7200)/(3*3600);
        end
        ue(i,j+1)=uf.*((1+exp((k(i,j+1)/km-0.25)/0.06)).^(-1)-372e-8);
        if u(i,j)<c
            u(i,j+1)=u(i,j)+dt*(c-u(i,j))*(u(i+1,j)-u(i,j))/dx-dt*(u(i,j)-ue(i,j))/T+sigma*randn(1);
        else
            u(i,j+1)=u(i,j)+dt*(c-u(i,j))*(u(i,j)-u(i-1,j))/dx-dt*(u(i,j)-ue(i,j))/T+sigma*randn(1);
        end
    end
    k(Nx+1,j+1)=k(1,j)+dt*k(1,j)*(u(1,j)-u(2,j))/dx+dt*u(1,j)*(k(Nx-1,j)-k(1,j))/dx;
    ue(1,j)=uf*((1+exp((k(1,j)/km-0.25)/0.06))^(-1)-372e-8);
    if u(Nx+1,j)<c
        u(Nx+1,j+1)=u(1,j)+dt*(c-u(1,j))*(u(2,j)-u(1,j))/dx-dt*(u(1,j)-ue(1,j))/T+sigma*randn(1);
    else
        u(Nx+1,j+1)=u(1,j)+dt*(c-u(1,j))*(u(1,j)-u(Nx,j))/dx-dt*(u(1,j)-ue(1,j))/T+sigma*randn(1);
    end
    k(1,j+1)=k(Nx+1,j+1);
    u(1,j+1)=u(Nx+1,j+1);
    q(:,j+1)=k(:,j+1).*u(:,j+1);
end

% contourf(u,200,'Linecolor','non');
% colormap('jet');
% colorbar;

writematrix(k,'Density.csv');
writematrix(q,'Flow.csv');
writematrix(u,'Velocity.csv'); 
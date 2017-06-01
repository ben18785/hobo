function [dgdx] = dgvec_dxvec(t,x,p) 

xdim=length(x);
dgdx = zeros(xdim,xdim); 

dg1dx1 = -p(2)*x(4)^4-p(3)*1.0-p(1)*x(2)^3*x(3);
dg1dx2 = (x(1)-4.0e1)*p(1)*x(2)^2*x(3)*-3.0;
dg1dx3 = -(x(1)-4.0e1)*p(1)*x(2)^3;
dg1dx4 = (x(1)+8.7e1)*p(2)*x(4)^3*-4.0;
dg2dx1 = exp(x(1)*(-1.0/1.8e1)-2.5e1/6.0)*x(2)*(2.0/9.0)+(x(2)*1.0e-1-1.0e-1)/(exp(x(1)*(-1.0/1.0e1)-5.0)-1.0)+exp(x(1)*(-1.0/1.0e1)-5.0)*(x(2)-1.0)*(x(1)*1.0e-1+5.0)*1.0/(exp(x(1)*(-1.0/1.0e1)-5.0)-1.0)^2*(1.0/1.0e1);
dg2dx2 = exp(x(1)*(-1.0/1.8e1)-2.5e1/6.0)*-4.0+(x(1)*1.0e-1+5.0)/(exp(x(1)*(-1.0/1.0e1)-5.0)-1.0);
dg2dx3 = 0.0;
dg2dx4 = 0.0;
dg3dx1 = exp(x(1)*(-1.0/2.0e1)-1.5e1/4.0)*(x(3)-1.0)*3.5e-3-exp(x(1)*(-1.0/1.0e1)-9.0/2.0)*1.0/(exp(x(1)*(-1.0/1.0e1)-9.0/2.0)+1.0)^2*x(3)*(1.0/1.0e1);
dg3dx2 = 0.0;
dg3dx3 = exp(x(1)*(-1.0/2.0e1)-1.5e1/4.0)*-7.0e-2-1.0/(exp(x(1)*(-1.0/1.0e1)-9.0/2.0)+1.0);
dg3dx4 = 0.0;
dg4dx1 = exp(x(1)*(-1.0/8.0e1)-1.5e1/1.6e1)*x(4)*1.5625e-3+(x(4)*1.0e-2-1.0e-2)/(exp(x(1)*(-1.0/1.0e1)-1.3e1/2.0)-1.0)+exp(x(1)*(-1.0/1.0e1)-1.3e1/2.0)*(x(4)-1.0)*(x(1)*1.0e-2+6.5e-1)*1.0/(exp(x(1)*(-1.0/1.0e1)-1.3e1/2.0)-1.0)^2*(1.0/1.0e1);
dg4dx2 = 0.0;
dg4dx3 = 0.0;
dg4dx4 = exp(x(1)*(-1.0/8.0e1)-1.5e1/1.6e1)*-1.25e-1+(x(1)*1.0e-2+6.5e-1)/(exp(x(1)*(-1.0/1.0e1)-1.3e1/2.0)-1.0);

dgdx(1,1) = dg1dx1;
dgdx(1,2) = dg1dx2;
dgdx(1,3) = dg1dx3;
dgdx(1,4) = dg1dx4;
dgdx(2,1) = dg2dx1;
dgdx(2,2) = dg2dx2;
dgdx(2,3) = dg2dx3;
dgdx(2,4) = dg2dx4;
dgdx(3,1) = dg3dx1;
dgdx(3,2) = dg3dx2;
dgdx(3,3) = dg3dx3;
dgdx(3,4) = dg3dx4;
dgdx(4,1) = dg4dx1;
dgdx(4,2) = dg4dx2;
dgdx(4,3) = dg4dx3;
dgdx(4,4) = dg4dx4;

end
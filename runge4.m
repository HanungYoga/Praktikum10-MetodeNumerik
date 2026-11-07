%Hanung Yoga Adi Pramono_L0325026
% Runge-Kutta Orde 4: dy/dx = (4x^3 - 2x + 1)/(2 + y), y(0) = 1, cari y(2) dengan N = 15
clc; clear;

f = @(x,y) (4*x^3 - 2*x + 1)/(2 + y);
a = 0; b = 2; y0 = 1; N = 15;
h = (b-a)/N;

yEksak = -2 + sqrt(2*b^4 - 2*b^2 + 2*b + 9);

fprintf('\nHasil Perhitungan Metode Runge-Kutta Orde 4\ni\txn\t\tk1\t\tk2\t\tk3\t\tk4\t\tyn\n')

x = a;
y = y0;
k = [];
fprintf('%d\t%f\t-\t\t-\t\t-\t\t-\t\t%f\n', 0, x, y);
for i = 1:N
  k(1) = f(x(i),y(i));
  k(2) = f(x(i)+h/2,y(i)+k(1)*h/2);
  k(3) = f(x(i)+h/2,y(i)+k(2)*h/2);
  k(4) = f(x(i)+h,y(i)+k(3)*h);
  y(i+1) = y(i)+h/6*(k(1)+2*k(2)+2*k(3)+k(4));
  x(i+1) = x(i)+h;
  fprintf('%d\t%f\t%f\t%f\t%f\t%f\t%f\n', i, x(i+1), k(1), k(2), k(3), k(4), y(i+1));
endfor
yRK4 = y(end);

galatAbs = abs(yEksak - yRK4);
galatRel = galatAbs / abs(yEksak) * 100;

fprintf('\nNilai eksak y(2)   = %.8f\n', yEksak);
fprintf('RK4 y(2)           = %.8f\n', yRK4);
fprintf('Galat absolut      = %.8f\n', galatAbs);
fprintf('Galat relatif (%%)  = %.6f\n', galatRel);

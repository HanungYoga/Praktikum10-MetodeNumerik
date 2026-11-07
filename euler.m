%Hanung Yoga Adi Pramono_L0325026
% Euler: dy/dx = (4x^3 - 2x + 1)/(2 + y), y(0) = 1, cari y(2) dengan N = 15
clc; clear;

f = @(x,y) (4*x^3 - 2*x + 1)/(2 + y);
a = 0; b = 2; y0 = 1; N = 15;
h = (b-a)/N;

yEksak = -2 + sqrt(2*b^4 - 2*b^2 + 2*b + 9);

fprintf('\nHasil Perhitungan Metode Euler\ni\txn\t\tyn\n')
% Iterasi ke-0
x = a;
y = y0;
fprintf('%d\t%f\t%f\n', 0, x, y);
% Iterasi pertama sampai selesai
for i = 1:N
  y(i+1) = y(i)+h*f(x(i),y(i));
  x(i+1) = x(i)+h;
  fprintf('%d\t%f\t%f\n', i, x(i+1), y(i+1));
endfor
yEuler = y(end);

galatAbs = abs(yEksak - yEuler);
galatRel = galatAbs / abs(yEksak) * 100;

fprintf('\nNilai eksak y(2)   = %.8f\n', yEksak);
fprintf('Euler y(2)         = %.8f\n', yEuler);
fprintf('Galat absolut      = %.8f\n', galatAbs);
fprintf('Galat relatif (%%)  = %.6f\n', galatRel);

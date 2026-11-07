%Hanung Yoga Adi Pramono_L0325026
% Eksak: dy/dx = (4x^3 - 2x + 1)/(2 + y), y(0) = 1, cari y(2)
clc; clear;

% Solusi eksak: (y+2)^2 = 2x^4 - 2x^2 + 2x + 9
x = 2;
yEksak = -2 + sqrt(2*x^4 - 2*x^2 + 2*x + 9);

fprintf('Nilai eksak y(2) = %.8f\n', yEksak);

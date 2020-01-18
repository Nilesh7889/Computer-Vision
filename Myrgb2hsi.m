function [Hue,Sat,Inten] = Myrgb2hsi(rgb)
rgb = im2double(rgb);
r = rgb(:, :, 1);
g = rgb(:, :, 2);
b = rgb(:, :, 3);
% Implement of the conversion.

no = 0.5*((r - g) + (r - b));
dn = sqrt((r - g).^2 + (r - b).*(g - b));
th = acos(no./(dn + eps));
H = th;
H(b > g) = 2*pi - H(b > g);
H = H/(2*pi);
no = min(min(r, g), b);
dn = r + g + b;
dn(dn == 0) = eps;
S = 1 - 3.* no./dn;
H(S == 0) = 0;
I = (r + g + b)/3;

Hue = (H);
Sat = (S);
Inten = (I);


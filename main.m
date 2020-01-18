
%      Name   : Nilesh Sisodiya         
%      EMAIL  : ns63833n@pace.edu

disp('--Finish Solving Question 1(A)--')

[Hue,Sat,Inten] = Myrgb2hsi(imread('ball.bmp'));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ------------Myrgb2hsi function-------
%
% function [Hue,Sat,Inten] = Myrgb2hsi(rgb)
% rgb = im2double(rgb);
% r = rgb(:, :, 1);
% g = rgb(:, :, 2);
% b = rgb(:, :, 3);
% % Implement of the conversion.
% 
% no = 0.5*((r - g) + (r - b));
% dn = sqrt((r - g).^2 + (r - b).*(g - b));
% th = acos(no./(dn + eps));
% H = th;
% H(b > g) = 2*pi - H(b > g);
% H = H/(2*pi);
% no = min(min(r, g), b);
% dn = r + g + b;
% dn(dn == 0) = eps;
% S = 1 - 3.* no./dn;
% H(S == 0) = 0;
% I = (r + g + b)/3;
% 
% Hue = (H);
% Sat = (S);
% Inten = (I);
% 
% 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


subplot(1,3,1)
imshow(Hue);
title('Hue image');        

subplot(1,3,2)
imshow(Sat);
title('Saturation image');       

subplot(1,3,3)        
imshow(Inten);
title('Intensity image');
pause;

E = rgb2hsv(imread('ball.bmp'));
HUE = E(:,:,1);
SAT = E(:,:,2);
INTEN = E(:,:,3);

figure;

subplot(1,3,1)
imshow(HUE);
title('Hue image');        

subplot(1,3,2)
imshow(SAT);
title('Saturation image');         

subplot(1,3,3)        
imshow(INTEN);
title('Intensity image');
pause;

figure;
subplot(2,3,1)
imshow(Hue);

subplot(2,3,2)
imshow(Sat);
title('My function');

subplot(2,3,3)        
imshow(Inten);

subplot(2,3,4)
imshow(HUE);

subplot(2,3,5)
imshow(SAT);
title('Matlab function');

subplot(2,3,6)        
imshow(INTEN);

pause;

Subt1 = imsubtract(HUE,Hue);
Subt2 = imsubtract(SAT,Sat);
Subt3 = imsubtract(INTEN,Inten);

figure;

subplot(1,3,1)
imshow(Subt1);

subplot(1,3,2)
imshow(Subt2);
title('Differences between functions');

subplot(1,3,3)        
imshow(Subt3);

disp('H space remains the same other two space changes. Here s space is darker in the my function and v space is lighter in the matlab function. Images with matab function has more intensity values than the my function.');
pause;

disp('--Finish Solving Question 1(B)--')

E = rgb2hsv(imread('ball.bmp'));
E = im2double(E);
V = E(:,:,3);

Fsobel = edge(V,'sobel');
Fprewitt = edge(V,'prewitt');
Froberts =  edge(V,'roberts');
Fcanny = edge(V,'canny',0.3);
Flog = edge(V,'log');

figure;
subplot(2,3,1)
imshow(V);

subplot(2,3,2)
imshow(Fsobel); 
title('Sobel');

subplot(2,3,3)
imshow(Fprewitt);
title('prewitt');

subplot(2,3,4)
imshow(Froberts);
title('roberts');

subplot(2,3,5)
imshow(Fcanny);
title('canny');

subplot(2,3,6) 
imshow(Flog);
title('Laplacian of gaussian,');

disp('Amoung the all edge detection techniques canny edge detection technique gives the best result it removes the noise and gives the clear edge.');
disp('sobel techniue is used to find the estimated absolute gradient magnitude at each point in n number of input in image.');
disp('Prewitt techniuqe gives the faster estimates of magnitude and orientation of an edge.');
disp('robert method is useful for regions of high spatial frequency.');
pause;
close all; 

disp('--Finish Solving Question 1(C)--')

O = imread('Ball.bmp');
O = im2double(O);
T = rgb2hsv(imread('ball.bmp'));
T = im2double(T);
Hspace = T(:,:,1);

[r,c] = size(Hspace);
for i = 1:r
    for j = 1:c
        if Hspace(i,j) >= 0.01 && Hspace(i,j) <= 0.1
        else
            Hspace(i,j) = 0;
        end
    end
end

s1 = strel('square',4);
s2 = strel('square',8);
Er = imerode(Hspace, s1);
Dl = imdilate(Er,s2);
Ball = imfill(Dl,'holes');

Ilabel = bwlabeln(Ball);
stat = regionprops(Ilabel,'centroid');
 imshow(Ball,[]); 
 title('Ball in H-space'); hold on;
for x = 1: numel(stat)
    plot(stat(x).Centroid(1),stat(x).Centroid(2),'b*');
end
pause;

Ilabel3 = bwlabeln(O);
stat2 = regionprops(Ilabel3,'centroid');
 imshow(O);
 title('Ball in Origional image'); hold on;
for x = 1: numel(stat)
    plot(stat(x).Centroid(1),stat(x).Centroid(2),'b*');
end
pause;

clear all;
close all;
clear 
close all
clc
%I=imread('plate4.png');        % MCG7722
I=imread('plate1.bmp');      %¾©H99999      
%I=imread('plate5.jpg');     %ÁÉASB745
figure,
imshow(I);
title('original image');

Im1 = rgb2gray(I); 
figure(2),
subplot(1,2,1),
imshow(Im1); 
title('graylevel');
figure(2),
subplot(1,2,2),
imhist(Im1);
title('histogram');

Im2 = imadjust(Im1,[0.2,0.8],[0,1]);
figure(3),
subplot(1,2,1),
imshow(Im2);
title('enhanced graylevel');
figure(3),
subplot(1,2,2),
imhist(Im2);
title('histogram');

Im3 = edge(Im2,'sobel',0.15,'both');
figure(4),
imshow(Im3);
title('edge detection');

se = [1;1;1];
Im4 = imerode(Im2,se);
figure(5),
imshow(Im4);
title('image erosion');
se = strel('rectangle',[25,25]);

Im5 = imclose(Im4,se);
figure(6),
imshow(Im5);
title('image smoothing');

%Im6 = im2bw(Im5);                        
Im6 = double((Im5)>230);               

Im6 = bwareaopen(Im6,2000);
figure(7),
imshow(Im6);
title('noise removing');

[y,x,z] = size(Im6);
Im7 = double(Im6);
Blue_y = zeros(y,1);
for i = 1:y
    for j = 1:x
        if (Im7(i,j,1) == 1)
            Blue_y(i,1) = Blue_y(i,1) + 1;
        end
    end
end
[temp,MaxY] = max(Blue_y);
PY1 = MaxY;
while ((Blue_y(PY1,1)>=5)&&(PY1>1))
    PY1 = PY1 - 1;
end
PY2 = MaxY;
while ((Blue_y(PY2,1)>=5)&&(PY2<y))
    PY2 = PY2 + 1;
end
IY = I(PY1:PY2,:,:);
Blue_x = zeros(1,x);
for j = 1:x
    for i = PY1:PY2
        if(Im7(i,j,1) == 1)
            Blue_x(1,j) = Blue_x(1,j) + 1;
        end
    end
end
PX1 = 1;
while ((Blue_x(1,PX1)<5)&&(PX1<x))
    PX1 = PX1 + 1;
end
PX2 = x;
while ((Blue_x(1,PX2)<5)&&(PX2>PX1))
    PX2 = PX2 - 1;
end
%PX1 = PX1 - 1;
%PX2 = PX2 + 1; 
PY = PY2 - PY1;
PX = PX2 - PX1;
%dw = I(PY1+fix(PY/3):PY2-fix(PY/6),PX1+fix(PX/12):PX2-fix(PX/12),:);  %for plate1.jpg
dw = I(PY1:PY2,PX1:PX2,:);                 %for plate4.png/car1.jpg/car2.bmp
figure(8),
subplot(1,2,1),
imshow(IY),
title('horizontal shearing');
figure(8),
subplot(1,2,2),
imshow(dw),
title('vertical shearing');

%imwrite(dw,'dw.jpg');
%a = imread('dw.jpg');
b = rgb2gray(dw);
%imwrite(b,'gray-level image');
figure(9),
subplot(2,2,1),
imshow(b),
title('gray-level image');
g_max = double(max(max(b)));
g_min = double(min(min(b)));
T = round(g_max-(g_max-g_min)/3);
%[m,n] = size(b);
d = double((b)>=T);
%imwrite(d,'binary image.jpg');
figure(9),
subplot(2,2,2),
imshow(d),
title('binary image');
h = fspecial('average',3);
d = im2bw(round(filter2(h,d)));
%imwrite(d,'after mean-filter');
figure(9),
subplot(2,2,3),
imshow(d),
title('after mean-filter');
%[m,n] = size(d);
% se2 = eye(2);
% if bwarea(d)/m/n >= 0.365
%     d = imerode(d,se);
% elseif bwarea(d)/m/n <=0.235
%     d = imdilate(d,se);
% end
% figure(9),
% subplot(2,2,4),
% imshow(d),
% title('after corrosion or expansion');

e=cutting(d);
subplot(2,2,4),
imshow(e),
title('edge cutting');

char = cell(7);
flag =1;
while flag<=7
    e=cutting(e);
    [f,e]=segmentation(e);
    f=cutting(f);
    if sum(sum(f))>=90
        char{flag} = f;
        f=imresize(f,[40 20]);
        figure(10),
        subplot(1,7,flag),
        imshow(f),
        imwrite(f,strcat('C:\Users\fwang\Documents\MATLAB\pic_',num2str(flag),'.bmp'),'bmp')
        flag=flag+1;
    end
end

load templates
global templates
load templates_ch
global templates_ch

n1=imread(strcat('pic_',num2str(1),'.bmp'));
img_r=imresize(n1,[32 16]);
character=read_character(img_r,25);
result(1)=character;

for flag2=2:7
    n2=imread(strcat('pic_',num2str(flag2),'.bmp'));
    img_r=imresize(n2,[32 16]);
    letter=read_letter(img_r,36);
    result(flag2)=letter;
end
figure(11)
imshow(I);
title('original image');
msgbox(result)
    







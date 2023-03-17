Thre=128;                 %手动设置阈值
I=imread('C:\Users\hp\Desktop\ab.jpg');   %载入rgb图像
I=rgb2gray(I);            %转换为灰度图像
figure;imhist(I);       %绘制灰度直方图
title('灰度直方图')
a=find(I<Thre);
b=find(I>=Thre);
e1=mean(I(a));
e2=mean(I(b));
std1 = std(im2double(I(a)) * 255, 0);
std2 = std(im2double(I(b)) * 255, 0);
 
x=0:1:300;
y1=normpdf(x,e1,std1);
figure,
plot(x,y1)
hold on
%y2=gaussmf(x,[std2 e2]);
y2=normpdf(x,e2,std2);
plot(x,y2)
xlabel('gaussmf, P1=[e1 v1],P2=[e2 v2]')
legend('灰度小于128的灰度值正态分布','灰度大于128的灰度值正态分布')
title('两个高斯分布')
 
I1=im2bw(I,128/256);
figure;
subplot(221),imshow(I1);
xlabel('固定阈值分割方法(128)');
I2=im2bw(I,140/256);
subplot(222),imshow(I2);
xlabel('固定阈值分割方法(140)');
I3=im2bw(I,90/256);
subplot(223),imshow(I3);
xlabel('固定阈值分割方法(90)');
I4=im2bw(I,180/256);
subplot(224),imshow(I4);
xlabel('固定阈值分割方法(180)');

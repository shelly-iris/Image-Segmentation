Thre=128;                 %�ֶ�������ֵ
I=imread('C:\Users\hp\Desktop\ab.jpg');   %����rgbͼ��
I=rgb2gray(I);            %ת��Ϊ�Ҷ�ͼ��
figure;imhist(I);       %���ƻҶ�ֱ��ͼ
title('�Ҷ�ֱ��ͼ')
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
legend('�Ҷ�С��128�ĻҶ�ֵ��̬�ֲ�','�Ҷȴ���128�ĻҶ�ֵ��̬�ֲ�')
title('������˹�ֲ�')
 
I1=im2bw(I,128/256);
figure;
subplot(221),imshow(I1);
xlabel('�̶���ֵ�ָ��(128)');
I2=im2bw(I,140/256);
subplot(222),imshow(I2);
xlabel('�̶���ֵ�ָ��(140)');
I3=im2bw(I,90/256);
subplot(223),imshow(I3);
xlabel('�̶���ֵ�ָ��(90)');
I4=im2bw(I,180/256);
subplot(224),imshow(I4);
xlabel('�̶���ֵ�ָ��(180)');

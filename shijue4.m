img1 = imread('objectA.png');%ԭͼ
figure;
subplot(2,4,1);imshow(img1);title('ԭͼ')
image_change(img1);
I1=imrotate(img1,45,'bilinear');%��ת�仯
subplot(2,4,2);imshow(I1);title('��ת');
image_change(I1);
I2=imresize(img1,2,'bilinear');%�߶ȱ仯
subplot(2,4,3);imshow(I2);title('�߶ȱ仯');
image_change(I2);
I3=flipdim(img1,2);%ԭͼ���ˮƽ����
subplot(2,4,4);imshow(I3);title('����仯');
image_change(I3);
img2 = imread('objectB.png');%ԭͼ
subplot(2,4,5);imshow(img2);
image_change(img2);title('ԭͼ')
I5=imrotate(img2,45,'bilinear');%��ת�仯
subplot(2,4,6);imshow(I5);title('��ת');
image_change(I5);
I6=imresize(img2,2,'bilinear');%�߶ȱ仯
subplot(2,4,7);imshow(I6);title('�߶ȱ仯');
image_change(I6);
I7=flipdim(img2,2);%ԭͼ���ˮƽ����
subplot(2,4,8);imshow(I7);title('����仯');
image_change(I7);
src = imread('C:\Users\hp\Desktop\ab.jpg'); %��ȡ�ļ�����
figure(1);  
%ostu��ֵ��
level=graythresh(src);
bw=im2bw(src,level);
subplot(2,2,1),imshow(bw),title('��ֵͼ��')
%����������
se = strel('disk',2);
openbw=imopen(bw,se);
subplot(2,2,2),imshow(openbw),title('��������Ч��ͼ')
%��ȡ��ͨ������ʾ
[L,num] = bwlabel(openbw,8);
RGB = label2rgb(L);
subplot(2,2,3),imshow(RGB),title('��rgb��ɫ��ǲ�ͬ����')
stats = regionprops(openbw, 'basic');
centroids = cat(1, stats.Centroid);
subplot(2,2,4),imshow(openbw),title('���Ŀ��');
for i=1:size(stats)
      rectangle('Position',[stats(i).BoundingBox],'LineWidth',2,'LineStyle','-','EdgeColor','r');
     stats(i).BoundingBox
end
     stats(2).BoundingBox(1)
     abs(stats(2).BoundingBox(3)-stats(2).BoundingBox(1))
     
     objectA=imcrop(openbw,[stats(1).BoundingBox(1),stats(1).BoundingBox(2),abs(stats(1).BoundingBox(3)),abs(stats(1).BoundingBox(4))]);
     figure(2);
     imshow(objectA),title('objectA');
     imwrite(objectA,'objectA.png');
     objectB = imcrop(openbw,[stats(2).BoundingBox(1),stats(2).BoundingBox(2),abs(stats(2).BoundingBox(3)),abs(stats(2).BoundingBox(4))]);
     figure(3);
     imshow(objectB),title('objectB');
     imwrite(objectB,'objectB.png');


src = imread('C:\Users\hp\Desktop\ab.jpg'); %读取文件数据
figure(1);  
%ostu二值化
level=graythresh(src);
bw=im2bw(src,level);
subplot(2,2,1),imshow(bw),title('二值图像')
%开运算消噪
se = strel('disk',2);
openbw=imopen(bw,se);
subplot(2,2,2),imshow(openbw),title('开运算后的效果图')
%获取连通区域并显示
[L,num] = bwlabel(openbw,8);
RGB = label2rgb(L);
subplot(2,2,3),imshow(RGB),title('用rgb颜色标记不同区域')
stats = regionprops(openbw, 'basic');
centroids = cat(1, stats.Centroid);
subplot(2,2,4),imshow(openbw),title('框出目标');
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


objectA=imread('objectA.png');
objectB=imread('objectB.png');

eul1=bweuler(~objectA,8);S1=bwarea(objectA);
img1=bwperim(objectA,8);%���ֵͼ�еı�Ե��
[m,n]=size(img1);
P=0;%�ܳ���ʼ��
for i=1:m
    for j=1:n
        if(img1(i,j)>0)
            P=P+1;
        end
    end
end
L1=P;
C1=4*pi*S1/power(L1,2);
e1=power(L1,2)/S1;
eul2=bweuler(~objectB,8);S2=bwarea(objectB);
img2=bwperim(objectB,8);%���ֵͼ�еı�Ե��
[m,n]=size(img2);
P=0;%�ܳ���ʼ��
for i=1:m
    for j=1:n
        if(img2(i,j)>0)
            P=P+1;
        end
    end
end
L2=P ;
C2=4*pi*S2/power(L2,2);
e2=power(L2,2)/S2;
fprintf('Ŀ��A��ŷ����Ϊ %8.1f\n',eul1),
fprintf('���Ϊ %8.2f\n',S1)
fprintf('�ܳ�Ϊ %8.2f\n',L1)
fprintf('Բ�ζ�Ϊ %8.5f\n',C1)
fprintf('��״���Ӷ�Ϊ %8.5f\n',e1)
fprintf('Ŀ��B��ŷ����Ϊ %8.1f\n',eul2),
fprintf('���Ϊ %8.2f\n',S2)
fprintf('�ܳ�Ϊ %8.2f\n',L2)
fprintf('Բ�ζ�Ϊ %8.5f\n',C2)
fprintf('��״���Ӷ�Ϊ %8.5f\n',e2)
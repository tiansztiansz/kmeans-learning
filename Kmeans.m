% ��������ռ�����б�������������MEX�ļ�
% ����: ���Ȿ�ε������ܵ�֮ǰ���е�Ӱ��
clear all;


% data: ����������ݼ�
% ���ﹲ�� 30 ����¼��ÿ����¼����3������
% ע��һ��Ϊ 1 ����¼��һ��Ϊ 1 ������
data=[
0	1521
1	470
1	470
1	466
1	470
1	470
0	1522
1	470
1	469
1	471
1	471
1	469
0	1522
1	469
0	1521
1	471
1	469
1	471
1	471
0	1522
1	474
0	1522
1	474
1	474
0	1521
1	474
0	1520
0	1520
1	471
1	475
1	474
1	475
1	475
1	475
1	475
0	1520
0	1520
1	475
1	469
0	1521
1	473
1	473
1	473
1	469
1	473
1	473
1	473     
];


% �˴�����Ԥ�ȶ���õĺ������� api��
% ������ matlab �������������� open kmeans �鿴Դ��
%  IDX: ������
%    C: ������
% SUMD: ÿһ���������ô����ĵľ���֮��
%    D: ÿһ�����������������ĵľ���
%    K: ����ĸ������������� k Ϊ 10��������Ϊ 10 ����
[IDX,C,SUMD,D] = kmeans(data,10);


% ����ά�ռ��� 3 ������Ϊ�����ᣬ����ͼ��
% plot3(data(:,1),data(:,2),data(:,3),'*');
% grid;


% �ҵ�ÿһ���������ĸ��������ĵ���С����
D=D'; 
minD=min(D); 


% �ҵ����ڲ�ͬ�صĵ�
index1 = find(D(1,:) ==min(D))  
index2 = find(D(2,:) ==min(D))  
index3 = find(D(3,:) ==min(D))  
index4 = find(D(4,:) ==min(D))  
index5 = find(D(5,:) ==min(D))  
index6 = find(D(6,:) ==min(D))  
index7 = find(D(7,:) ==min(D))  
index8 = find(D(8,:) ==min(D))  
index9 = find(D(9,:) ==min(D))  
index10 = find(D(10,:) ==min(D))  


% ��ͼ���жԲ�ͬ�Ĵؼ�������
% line(data(index1,1),data(index1,2),data(index1,3),'linestyle', 'none','marker','*','color','g');
% line(data(index2,1),data(index2,2),data(index2,3),'linestyle', 'none','marker','*','color','r');
% line(data(index3,1),data(index3,2),data(index3,3),'linestyle', 'none','marker','+','color','b');
% line(data(index4,1),data(index4,2),data(index4,3),'linestyle', 'none','marker','+','color','y');
% line(data(index5,1),data(index5,2),data(index5,3),'linestyle', 'none','marker','+','color','y');


% ͼ�α��⡢���������
% title('C��ֵ�������ͼ');
% xlabel('��һ��������');
% ylabel('�ڶ���������');
% zlabel('������������');


% ���ÿ���صĴ�����
% C



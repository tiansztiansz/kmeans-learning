% 清除工作空间的所有变量，函数，和MEX文件
% 作用: 避免本次的运行受到之前运行的影响
clear all;


% data: 待聚类的数据集
% 这里共有 30 条记录，每条记录含有3个特征
% 注：一行为 1 条记录，一列为 1 个特征
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


% 此处调用预先定义好的函数，即 api，
% 可以在 matlab 的命令行中输入 open kmeans 查看源码
%  IDX: 聚类结果
%    C: 簇中心
% SUMD: 每一个样本到该簇中心的距离之和
%    D: 每一个样本到各个簇中心的距离
%    K: 分类的个数，这里设置 k 为 10，即将分为 10 个簇
[IDX,C,SUMD,D] = kmeans(data,10);


% 在三维空间以 3 个特征为坐标轴，构建图形
% plot3(data(:,1),data(:,2),data(:,3),'*');
% grid;


% 找到每一个样本到四个聚类中心的最小距离
D=D'; 
minD=min(D); 


% 找到属于不同簇的点
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


% 在图形中对不同的簇加以区分
% line(data(index1,1),data(index1,2),data(index1,3),'linestyle', 'none','marker','*','color','g');
% line(data(index2,1),data(index2,2),data(index2,3),'linestyle', 'none','marker','*','color','r');
% line(data(index3,1),data(index3,2),data(index3,3),'linestyle', 'none','marker','+','color','b');
% line(data(index4,1),data(index4,2),data(index4,3),'linestyle', 'none','marker','+','color','y');
% line(data(index5,1),data(index5,2),data(index5,3),'linestyle', 'none','marker','+','color','y');


% 图形标题、坐标轴标题
% title('C均值聚类分析图');
% xlabel('第一特征坐标');
% ylabel('第二特征坐标');
% zlabel('第三特征坐标');


% 输出每个簇的簇中心
% C



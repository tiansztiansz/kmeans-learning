%% 使用纹理和空间信息改进 k 均值分割


% 将图像读入工作区。减小图像大小以使示例运行得更快。
RGB = imread('turtle.png');
RGB = imresize(RGB,0.5);


% 使用 k 均值聚类将图像分割成两个区域。
L = imsegkmeans(RGB,2);
B = labeloverlay(RGB,L);


% 使用每个像素邻域中的纹理信息来补充图像。要获取纹理信息，请使用一组 Gabor 滤波器对图像的灰度版本进行滤波。
% 创建一组 Gabor 滤波器（包含 24 个），覆盖 6 个波长和 4 个方向。
wavelength = 2.^(0:5) * 3;
orientation = 0:45:135;
g = gabor(wavelength,orientation);


% 将图像转换为灰度。
I = im2gray(im2single(RGB));


% 使用 Gabor 滤波器对灰度图像进行滤波。以蒙太奇方式显示 24 个滤波后的图像。
gabormag = imgaborfilt(I,g);


% 对每个滤波后的图像进行平滑处理以消除局部变化。以蒙太奇方式显示平滑处理后的图像。
for i = 1:length(g)
    sigma = 0.5*g(i).Wavelength;
    gabormag(:,:,i) = imgaussfilt(gabormag(:,:,i),3*sigma); 
end


% 用空间位置信息补充关于每个像素的信息。此额外信息让 k 均值聚类算法能够在分组时优先考虑空间上相近的像素。
%获取输入图像中所有像素的 x 和 y 坐标。
nrows = size(RGB,1);
ncols = size(RGB,2);
[X,Y] = meshgrid(1:ncols,1:nrows);


% 串联有关每个像素的强度信息、邻域纹理信息和空间信息。
% 对于此示例，特征集使用强度图像 I，而不是原始彩色图像 RGB。特征集省略了颜色信息，因为狗毛的黄色与图块的黄色相似。颜色通道无法提供足够多有关狗和背景的差异信息来进行清晰的分割。
featureSet = cat(3,I,gabormag,X,Y);


% 使用 k 均值聚类基于补充特征集将图像分割成两个区域。
L2 = imsegkmeans(featureSet,2,'NormalizeInput',true);
C = labeloverlay(RGB,L2);
imshow(C)
title('带有附加像素信息的标记图像')

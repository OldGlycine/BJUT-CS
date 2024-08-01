pic = imread('1.png');
% 转换为灰度图
%pic = rgb2gray(pic);
%pic = im2double(pic);
%% 
% 两组滤波器如下
k1 = fspecial('laplacian', 0);
k2 = fspecial('laplacian', 1/3);

%% 
% 以k1为切入点，进行参数寻优
bs1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
for i = 1:10
    path = './b1/';
    path = strcat(path, num2str(i), '.png');
    imwrite(pic-bs1(i)*imfilter(pic, k1), path);
end
%%
% 第二组参数寻优
bs2 = [2, 2.25, 2.5, 2.75, 3, 3.25, 3.5, 3.75, 4];
for i = 1:9
    path = './b1/';
    path = strcat(path, num2str(bs2(i)), '.png');
    imwrite(pic-bs2(i)*imfilter(pic, k1), path);
end
%%
% 第三组参数寻优
bs3 = [2, 2.125, 2.25, 2.375, 2.5, 2.625, 2.75];
for i = 1:7
    path = './b1/';
    path = strcat(path, num2str(bs3(i)), '.png');
    imwrite(pic-bs3(i)*imfilter(pic, k1), path);
end
%%
% 第四组参数寻优
bs4 = [2, 2.0625 , 2.125, 2.1875, 2.25];
for i = 1:5
    path = './b1/';
    path = strcat(path, num2str(bs4(i)), '.png');
    imwrite(pic-bs4(i)*imfilter(pic, k1), path);
end

%%
% 暂定2.1875为最优

b = 2.1875;

% 4邻域
path = './k';
path = strcat(path, num2str(1), '.png');
imwrite(pic-b*imfilter(pic, k1), path);

% 8邻域需要*2
path = './k';
path = strcat(path, num2str(2), '.png');
imwrite(pic-b*2*imfilter(pic, k2), path);

%%
% 8邻域滤波参数寻优实验
bs4 = [2, 2.0625 , 2.125, 2.1875, 2.25];
for i = 1:5
    path = './b2/';
    path = strcat(path, num2str(bs4(i)), '.png');
    imwrite(pic-bs4(i)*2*imfilter(pic, k3), path);
end


%%
% 最大值滤波降椒噪（舍弃本步骤）
A = im2double(pic-10*imfilter(pic, k1));
temp = ordfilt2(A, 9, ones(3));
imshow(temp)





%% 代码调试区，非实验内容
ii = imfilter(pic, k1);
imshow(pic -  ii)
g = fspecial('gaussian', 3, 0.7);
%imshow(imfilter(pic - 2*ii, g))

%% 


h4 = fspecial('laplacian', 0);
i4 = imfilter(pic, h4);

h3 = fspecial('laplacian', 1/3);
i3 = imfilter(pic, h3);
imshow(i3)

h = fspecial('average');
i = imfilter(pic-2 * i4, h);

subplot(3, 2, 1), imshow(pic), title('Original')
subplot(3, 2, 2), imshow(i4), title('Laplacian')
subplot(3, 2, 3), imshow(pic-i4), title('Filtered')
subplot(3, 2, 4), imshow(i), title('Averaged')
subplot(3, 2, 5), imshow(i3), title('Laplacian 0.33')
subplot(3, 2, 6), imshow(pic-i3), title('Filtered 0.33')


%% 
tt = rgb2gray(pic);
imshow(tt)

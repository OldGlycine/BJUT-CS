pic = imread('2.png');

%%
%OTSU阈值分割
threshold=graythresh(pic);%获取阈值
greypic=imbinarize(pic,threshold);%根据阈值的大小来进行分割
imwrite(greypic, 'OTSU.png')

%%
% 反转
greypic = 1 - greypic;
imwrite(greypic, 'reverse.png')
% 拷贝
g4 = greypic;
g8 = greypic;
%%
% 4连通测试
count4 = bwconncomp(g4, 4)
% 剔除连通噪点
numPixels4 = cellfun(@numel,count4.PixelIdxList);

test44 = [10, 15, 20, 25, 30, 35, 40, 45, 50];
for i = 1:length(test44)
    temp = g4;
    for j = 1:length(numPixels4)
        if numPixels4(j) <= test44(i)
            temp(count4.PixelIdxList{j}) = 0;
        end
    end
    % 4连通测试
    temp_count4 = bwconncomp(temp, 4);
    % 8连通测试
    temp_count8 = bwconncomp(temp, 8);
    imwrite(temp,['./4/filter-', num2str(test44(i)), ...
        ' final_count of 4-',num2str(temp_count4.NumObjects), ...
        ' final_count of 8-', num2str(temp_count8.NumObjects), '.png'])
end

%%
% 8连通测试
count8 = bwconncomp(g8, 8)
% 剔除连通噪点
numPixels8 = cellfun(@numel,count8.PixelIdxList);

test48 = [30, 40, 50, 55, 75, 100, 113 ,125];
for i = 1:length(test48)
    temp = g8;
    for j = 1:length(numPixels8)
        if numPixels8(j) <= test48(i)
            temp(count8.PixelIdxList{j}) = 0;
        end
    end
    % 4连通测试
    temp_count4 = bwconncomp(temp, 4);
    % 8连通测试
    temp_count8 = bwconncomp(temp, 8);
    imwrite(temp,['./8/filter-', num2str(test48(i)), ...
        ' final_count of 4-',num2str(temp_count4.NumObjects), ...
        ' final_count of 8-', num2str(temp_count8.NumObjects), '.png'])
end

%%
% 4连通优化8连通测试
count8_f = bwconncomp(g8, 8)
% 剔除连通噪点
numPixels8_f = cellfun(@numel,count8_f.PixelIdxList);

filter = 113;
temp_f = g8;
for i = 1:length(numPixels8_f)
    if numPixels8_f(i) <= filter
        temp_f(count8_f.PixelIdxList{i}) = 0;
    end
end

count8_4 = bwconncomp(temp_f, 4)
numPixels4_8 = cellfun(@numel,count8_4.PixelIdxList);
for i = 1:length(numPixels4_8)
    if numPixels4_8(i) <= 25
        temp_f(count8_4.PixelIdxList{i}) = 0;
    end
end
imshow(temp_f)
repair = bwconncomp(temp_f, 8)
imwrite(temp_f, './repair-4-48-8-47.png')

%% 下面是实验区，非正式代码
% 获取分割图中的连通分量数
count = bwconncomp(greypic, 4)

%% 
% 剔除掉连通噪点
    % 获取index
numPixels = cellfun(@numel,count.PixelIdxList);

for i = 1:length(numPixels)
    % 获取删除index
    % 4连通：25([10, 15, 20, 25, 30, 35, 40])
    % 8连通：100([30, 40, 50, 75, 100, 125])
    if numPixels(i) <= 100
        % 删除
        greypic(count.PixelIdxList{i}) = 0;
    end
end
%%
% 展示
imshow(greypic)

%% 
% 再次统计
final_count = bwconncomp(greypic)
%% ceshi
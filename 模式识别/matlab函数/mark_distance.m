
function dis=mark_distance(a,b)
%计算两个图像感知哈希指纹之间的距离
re =a-b;
s =find(re==0);

%dis为两个指纹之间不同元素的个数

dis=length(a)-length(s);
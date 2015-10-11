function hashString = pHash(image)
%计算一副图像的感知哈希指纹


im=imread(image);
%step1. 将调整图像大小
im_rz=imresize(im,[8,8]);
im_size=size(im_rz);
%%%step2. 如果图像是rgb图像,将其转换为灰度图像
if(numel(im_size)>2)
       im_rz=rgb2gray(im_rz);
end
%step3. 计算灰度图像的平均值
mean_value=mean(mean(im_rz));

%step4. 将im_rz与图像的平均值进行比较,如果某个像素值大于平均值,就将相应位置置为1
%否则置为0
mask=zeros(8);
r = find(im_rz>mean_value);
mask(r)=1;
hashString=reshape(mask,1,64);




function hashString = pHash(image)
%����һ��ͼ��ĸ�֪��ϣָ��


im=imread(image);
%step1. ������ͼ���С
im_rz=imresize(im,[8,8]);
im_size=size(im_rz);
%%%step2. ���ͼ����rgbͼ��,����ת��Ϊ�Ҷ�ͼ��
if(numel(im_size)>2)
       im_rz=rgb2gray(im_rz);
end
%step3. ����Ҷ�ͼ���ƽ��ֵ
mean_value=mean(mean(im_rz));

%step4. ��im_rz��ͼ���ƽ��ֵ���бȽ�,���ĳ������ֵ����ƽ��ֵ,�ͽ���Ӧλ����Ϊ1
%������Ϊ0
mask=zeros(8);
r = find(im_rz>mean_value);
mask(r)=1;
hashString=reshape(mask,1,64);




function grad= image_process_sobel(name)
% �Դ����name��ͼ������ƣ�����sobel������ͼ���Ե
%name: �����ͼ�������
%grad��x�᷽���y�᷽��ı�Ե���ӵĽ��


I=imread(name); 
if(numel(size(I))>2)
I=rgb2gray(I);
end

subplot(2,2,1); 
imshow(I); 
title('ԭͼ'); 
 hx=[-1 -2 -1;0 0 0 ;1 2 1];%����sobel��ֱ�ݶ�ģ��  
 hy=hx';                             %����sobelˮƽ�ݶ�ģ��  
   
 gradx=filter2(hx,I,'same');  
 gradx=abs(gradx); %����ͼ���sobel��ֱ�ݶ�  
 subplot(2,2,2);  
 imshow(gradx,[]);  
 title('ͼ���sobel��ֱ�ݶ�');  
   
   
 grady=filter2(hy,I,'same');  
 grady=abs(grady); %����ͼ���sobelˮƽ�ݶ�  
 subplot(2,2,3);  
 imshow(grady,[]);  
  title('ͼ���sobelˮƽ�ݶ�');  
    
  grad=gradx+grady;  %�õ�ͼ���sobel�ݶ�  
  subplot(2,2,4);  
  imshow(grad,[]);  
  title('ͼ���sobel�ݶ�');

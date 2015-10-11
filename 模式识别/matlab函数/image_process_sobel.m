function grad= image_process_sobel(name)
% 对传入的name（图像的名称）运用sobel算子求图像边缘
%name: 传入的图像的名称
%grad：x轴方向和y轴方向的边缘叠加的结果


I=imread(name); 
if(numel(size(I))>2)
I=rgb2gray(I);
end

subplot(2,2,1); 
imshow(I); 
title('原图'); 
 hx=[-1 -2 -1;0 0 0 ;1 2 1];%生产sobel垂直梯度模板  
 hy=hx';                             %生产sobel水平梯度模板  
   
 gradx=filter2(hx,I,'same');  
 gradx=abs(gradx); %计算图像的sobel垂直梯度  
 subplot(2,2,2);  
 imshow(gradx,[]);  
 title('图像的sobel垂直梯度');  
   
   
 grady=filter2(hy,I,'same');  
 grady=abs(grady); %计算图像的sobel水平梯度  
 subplot(2,2,3);  
 imshow(grady,[]);  
  title('图像的sobel水平梯度');  
    
  grad=gradx+grady;  %得到图像的sobel梯度  
  subplot(2,2,4);  
  imshow(grad,[]);  
  title('图像的sobel梯度');

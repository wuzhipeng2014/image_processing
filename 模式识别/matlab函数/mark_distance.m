
function dis=mark_distance(a,b)
%��������ͼ���֪��ϣָ��֮��ľ���
re =a-b;
s =find(re==0);

%disΪ����ָ��֮�䲻ͬԪ�صĸ���

dis=length(a)-length(s);
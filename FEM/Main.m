node = load('.\data\node.txt');
unit = load('.\data\unit.txt');
mat = load('.\data\mat.txt');
pre = load('.\data\pre.txt');
load = load('.\data\load.txt');
[node_num,~] = size(node);
[unit_num,~] = size(unit);
[pre_num,~] = size(pre);
[load_num,~] = size(load);
D = mat(1)/(1-mat(2)^2)*[1,mat(2),0;mat(2),1,0;0,0,(1-mat(2))*0.5];
B = zeros(3,6,unit_num);
ke = zeros(6,6,unit_num);
K = zeros(2*node_num);
for i = 1:unit_num
    [B(:,:,i),ke(:,:,i)] = To_Bke([node(unit(i,1)+1,1);node(unit(i,2)+1,1);node(unit(i,3)+1,1)],[node(unit(i,1)+1,2);node(unit(i,2)+1,2);node(unit(i,3)+1,2)],D,mat(3));
    for j = 1:3
         for k = 1:3
             K(2*unit(i,j)+1,2*unit(i,k)+1) = K(2*unit(i,j)+1,2*unit(i,k)+1) + ke(2*j-1,2*k-1);
             K(2*unit(i,j)+1,2*unit(i,k)+2) = K(2*unit(i,j)+1,2*unit(i,k)+2) + ke(2*j-1,2*k);
             K(2*unit(i,j)+2,2*unit(i,k)+1) = K(2*unit(i,j)+2,2*unit(i,k)+1) + ke(2*j,2*k-1);
             K(2*unit(i,j)+2,2*unit(i,k)+2) = K(2*unit(i,j)+2,2*unit(i,k)+2) + ke(2*j,2*k);
         end
    end
end
P = To_P(node_num,load_num,load);
[pre,~] = sort(pre,1,'descend');
for i = 1:pre_num
    K(pre(i,1)+1,:)=[];
    P(pre(i,1)+1)=[];
end
for i = 1:pre_num
    K(:,pre(i,1)+1)=[];
end
clear mat node unit load pre;
u = K\P;

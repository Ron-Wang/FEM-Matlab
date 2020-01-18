# Finite-Element-Method (FEM)

利用MATLAB编程，实现平面（应变）三角形单元的有限元静力学求解。  

## 数据说明
*仅处理平面三角形单元*  
* node.txt  节点信息：x坐标，y坐标;  
* unit.txt  单元信息：节点号1，节点号2，节点号3;  
& pre.txt  约束信息：自由度编号，约束条件(0表示位移为零);  
& met.txt  材料信息：弹性模量E，泊松比ν，厚度t;  
& load.txt  荷载信息（不计自重）：自由度编号，荷载大小;  
*其中节点编号、自由度编号均从0开始*  

## 不同单元划分

![image](https://github.com/Ron-Wang/FEM-Matlab/blob/master/FEM/2-5/2-5.png)  
*另一单元划分为镜像*  

## 计算结果 </br>
* x方向（水平力）：  
![image](https://github.com/Ron-Wang/FEM-Matlab/blob/master/FEM/data/2-5x.jpg)  
![image](https://github.com/Ron-Wang/FEM-Matlab/blob/master/FEM/data/2-5x1.jpg)  

* y方向（竖直力）：  
![image](https://github.com/Ron-Wang/FEM-Matlab/blob/master/FEM/data/2-5y.jpg)  
![image](https://github.com/Ron-Wang/FEM-Matlab/blob/master/FEM/data/2-5y1.jpg)  

* xy方向（剪力）：  
![image](https://github.com/Ron-Wang/FEM-Matlab/blob/master/FEM/data/2-5xy.jpg)  
![image](https://github.com/Ron-Wang/FEM-Matlab/blob/master/FEM/data/2-5xy1.jpg)  


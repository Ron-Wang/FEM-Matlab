function [B,ke] = To_Bke(X,Y,D,t)
bi = Y(2)-Y(3);
ci = X(3)-X(2);
bj = Y(3)-Y(1);
cj = X(1)-X(3);
bm = Y(1)-Y(2);
cm = X(2)-X(1);
A = 0.5*(bj*cm - bm*cj);
B = 0.5 / A * [bi,0,bj,0,bm,0;
               0,ci,0,cj,0,cm;
               ci,bi,cj,bj,cm,bm];
ke = B'*D*B*t*A;
end
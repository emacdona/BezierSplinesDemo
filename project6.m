clc;
clear all;
clf;

plot([0 3],[0 0],'k',[0 0],[0 3],'k'); 
hold on 

%The letter O
% x=[   
%      1 0 0 1;
%       1 2 2 1;
%      1 .3 .3 1;
%       1 1.7 1.7 1
% ];
% 
% y=[
%      2 2 0 0;
%       0 0 2 2;
%      1.95 1.95 .05 .05;
%       .05 .05 1.95 1.95
% ];

[x,y] = g;


numcurves=size(x,1); 

t=0:.002:1; 
for i=1:numcurves 
  plot(x(i,1),y(i,1),'ro',x(i,4),y(i,4),'ro') 
  plot([x(i,1),x(i,2)],[y(i,1),y(i,2)],'b:') 
  plot([x(i,3),x(i,4)],[y(i,3),y(i,4)],'b:') 
  plot(x(i,2),y(i,2),'bs',x(i,3),y(i,3),'bs') 

  bx = 3*(x(i,2) - x(i,1));
  cx = 3*(x(i,3) - x(i,2)) - bx;
  dx = x(i,4) - x(i,1) - bx -cx;

  by = 3*(y(i,2) - y(i,1));
  cy = 3*(y(i,3) - y(i,2)) - by;
  dy = y(i,4) - y(i,1) - by -cy;

  xp=x(i,1)+bx*t+cx*t.*t+dx*t.^3; 
  yp=y(i,1)+by*t+cy*t.*t+dy*t.^3; 
  plot(xp,yp,'k') 
end 
axis square
grid
hold off

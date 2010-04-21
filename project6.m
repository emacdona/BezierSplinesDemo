plot([0 3],[0 0],'k',[0 0],[0 3],'k'); 
hold on 
x=[1 0 0 1;1 2 2 1;1 .3 .3 1;1 1.7 1.7 1];
y=[2 2 0 0;0 0 2 2;1.95 1.95 .05 .05;.05 .05 1.95 1.95];
numcurves=4; 
t=0:.002:1; 
for i=1:numcurves 
  plot(x(i,1),y(i,1),'ro',x(i,4),y(i,4),'ro') 
  plot([x(i,1),x(i,2)],[y(i,1),y(i,2)],'g:') 
  plot([x(i,3),x(i,4)],[y(i,3),y(i,4)],'g:') 
  plot(x(i,2),y(i,2),'gs',x(i,3),y(i,3),'gs') 
% some code needed here 
  xp=x(i,1)+bx*t+cx*t.*t+dx*t.^3; 
  yp=y(i,1)+by*t+cy*t.*t+dy*t.^3; 
  plot(xp,yp,'k') 
end 
axis square
grid
hold off

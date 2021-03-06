function [ maxX, preScaleMaxX ] = bezierPlot( axesHandle, x, y, c, showPoints )
%bezierPlot 
%   
    numcurves=size(x,1); 

    t=0:.002:1;
    
    maxX = 0;
    preScaleMaxX = 0;
    
    x = x + y*c;
    
    hold(axesHandle, 'on');

    for i=1:numcurves
      if showPoints
          plot(axesHandle, x(i,1),y(i,1),'ro',x(i,4),y(i,4),'ro') 
          plot(axesHandle, [x(i,1),x(i,2)],[y(i,1),y(i,2)],'b:') 
          plot(axesHandle, [x(i,3),x(i,4)],[y(i,3),y(i,4)],'b:') 
          plot(axesHandle, x(i,2),y(i,2),'bs',x(i,3),y(i,3),'bs') 
      end
      
      bx = 3*(x(i,2) - x(i,1));
      cx = 3*(x(i,3) - x(i,2)) - bx;
      dx = x(i,4) - x(i,1) - bx -cx;

      by = 3*(y(i,2) - y(i,1));
      cy = 3*(y(i,3) - y(i,2)) - by;
      dy = y(i,4) - y(i,1) - by -cy;

      xp=x(i,1)+bx*t+cx*t.*t+dx*t.^3; 
      yp=y(i,1)+by*t+cy*t.*t+dy*t.^3; 
      plot(axesHandle, xp,yp,'k')
      
      if max(xp) > maxX
          maxX = max(xp);
      end
      
      if( max(xp - yp*c) > preScaleMaxX)
         preScaleMaxX = max(xp - yp*c); 
      end
    end 
    %axis square
    grid on
    hold(axesHandle, 'off')
end


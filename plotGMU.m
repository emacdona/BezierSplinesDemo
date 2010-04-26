function plotGMU(hObject, spacing, c, showPoints)
%plotGMU 
%   
    cla(hObject);

    axis([-800 4500 -500 1000]);
    
    hold on;

    [gx,gy] = g;
    [mx,my] = m;
    [ux,uy] = u;

    [maxGx, preScaleMaxGx] = bezierPlot(hObject, gx, gy, c, showPoints);
    [maxMx, preScaleMaxMx] = bezierPlot(hObject, mx + preScaleMaxGx + spacing, my, c, showPoints);
    [maxUx, preScaleMaxUx] = bezierPlot(hObject, ux + preScaleMaxMx + spacing, uy, c, showPoints);

%       [Ex, Ey] = capE;
%       [dx, dy] = d;
%       [Mx, My] = capM;
%       [ax, ay] = a;
%       [cx, cy] = cp;
%       [Dx, Dy] = capD;
%       [ox, oy] = o;
%       [nx, ny] = n;
%       [lx, ly] = l;
%       
%       [max, preMax] = bezierPlot(hObject, Ex, Ey, c, showPoints);
%       [max, preMax] = bezierPlot(hObject, dx + preMax + spacing, dy, c, showPoints);
%       [max, preMax] = bezierPlot(hObject, Mx + preMax + spacing, My, c, showPoints);
%       [max, preMax] = bezierPlot(hObject, ax + preMax + spacing, ay, c, showPoints);
%       [max, preMax] = bezierPlot(hObject, cx + preMax + spacing, cy, c, showPoints);
%       [max, preMax] = bezierPlot(hObject, Dx + preMax + spacing, Dy, c, showPoints);
%       [max, preMax] = bezierPlot(hObject, ox + preMax + spacing, oy, c, showPoints);
%       [max, preMax] = bezierPlot(hObject, nx + preMax + spacing, ny, c, showPoints);
%       [max, preMax] = bezierPlot(hObject, ax + preMax + spacing, ay, c, showPoints);
%       [max, preMax] = bezierPlot(hObject, lx + preMax + spacing, ly, c, showPoints);
%       [max, preMax] = bezierPlot(hObject, dx + preMax + spacing, dy, c, showPoints);
      

    hold off;
end


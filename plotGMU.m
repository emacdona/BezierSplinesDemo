function plotGMU(hObject, spacing, c, showPoints)
%plotGMU 
%   
    cla(hObject);

    axis([-1000 6000 -500 1000]);
    
    hold on;

    [gx,gy] = g;
    [mx,my] = m;
    [ux,uy] = u;

    maxGx = bezierPlot(hObject, gx, gy, c, showPoints);
    maxMx = bezierPlot(hObject, mx + maxGx + spacing, my, c, showPoints);
    maxUx = bezierPlot(hObject, ux + maxMx + spacing, uy, c, showPoints);

    hold off;
end


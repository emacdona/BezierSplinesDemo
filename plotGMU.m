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

    hold off;
end


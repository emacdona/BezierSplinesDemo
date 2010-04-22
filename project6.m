clc;
clear all;
clf;

hold on;

[gx,gy] = g;
[mx,my] = m;
[ux,uy] = u;

spacing = 50;

c = 1;
showPoints = 0;

maxGx = bezierPlot(gca, gx, gy, c, showPoints);
maxMx = bezierPlot(gca, mx + maxGx + spacing, my, c, showPoints);
maxUx = bezierPlot(gca, ux + maxMx + spacing, uy, c, showPoints);

hold off;
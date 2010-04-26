function plotGMU(varargin)
%plotGMU 
%   
    
    if nargin == 1
        %If nargin == 1, I'm assuming the only argument is the handles
        %object from project6gui. Yeah, this makes for a dependency on the
        %gui, but it will work without it too.
        handles   = varargin{1};
        hObject   = handles.axes1;
        spacing   = 50; %may want to create a gui object to vary this
        c         = get(handles.slider2, 'Value');
        if(get(handles.checkbox1, 'Value') == get(handles.checkbox1, 'Max'))
            showPoints = 1;
        else
            showPoints = 0;
        end
    else
        hObject      = varargin{1};
        spacing      = varargin{2};
        c            = varargin{3};
        showPoints   = varargin{4};
    end
    
    cla(hObject);
    
    axis([-800 4500 -500 1000]);
    
    hold on;

    [gx,gy] = g;
    [mx,my] = m;
    [ux,uy] = u;

    [maxGx, preScaleMaxGx] = ...
        bezierPlot(hObject, gx, gy, c, showPoints);
    
    [maxMx, preScaleMaxMx] = ...
        bezierPlot( hObject, ...
                    mx + preScaleMaxGx + spacing, ...
                    my, c, showPoints);
    
    [maxUx, preScaleMaxUx] = ...
        bezierPlot( hObject, ...
                    ux + preScaleMaxMx + spacing, ...
                    uy, c, showPoints);

    hold off;
end


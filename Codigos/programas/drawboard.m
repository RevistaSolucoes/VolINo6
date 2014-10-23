 function drawboard(playermark,commark)
        %Drawing board background
        axis off
        axis([0.5 3.5 0.5 3.5])
        rectangle('Position',[0.5 0.5 3 3])
        rectangle('Position',[1.5 0.5 1 3])
        rectangle('Position',[0.5 1.5 3 1])
        %Drawing player mark
        [row,col]=find(playermark==1);
        if ~isempty(row)
            for i=1:1:numel(row)
                drawcircle(col(i),4-row(i))
            end
        end
        %Drawing com mark
        [row,col]=find(commark==1);
        if ~isempty(row)
            for i=1:1:numel(row)
                drawcross(col(i),4-row(i))
            end
        end
    end
    %End of drawboard

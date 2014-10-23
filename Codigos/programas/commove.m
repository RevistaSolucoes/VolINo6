  %Start of commove
    function commark=commove(playermark,commark)
        endturn=0;
        set(instructionbox,'String','COM turn, please wait...')
        while endturn==0
            %Creating COM input
            [row,col]=comthink(playermark,commark);
            %Checking COM input
            endturn=checkmove(row,col,playermark,commark);
            %Updating board
            if endturn==1
                commark(row,col)=1;
                drawboard(playermark,commark)
            else
                set(instructionbox,'String',['Cannot choose that spot!',...
                                             ' Choose another spot!'])
            end
        end
    end
    %End of commove
   

 %Start of checkmove
    function endturn=checkmove(row,col,playermark,commark)
        if (row>3)||(row<1)||(col>3)||(col<1)
            endturn=0;
        else
            if (playermark(row,col)==0)&&(commark(row,col)==0)
                endturn=1;
            else
                endturn=0;
            end
        end
    end
    %End of checkmove
   %Listing CallbackFunction

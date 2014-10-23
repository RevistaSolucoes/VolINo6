    %Start of startgamefcn
    function startgamefcn(~,~)
        %Resetting mark
        playermark=zeros(3);
        commark=zeros(3);
        winner=[];
        cla
        drawboard(playermark,commark)
        %Randomly choose player for first turn
        decision=rand;
        %Initiating first COM turn
        if decision<=0.5
            commark=commove(playermark,commark);
        end
        %Waiting for player's move
        set(instructionbox,'String',['Your turn, choose your mark and',...
                                     ' press enter...'])
        set(xinputbox,'Enable','on')
        set(yinputbox,'Enable','on')
        set(markbutton,'Enable','on')
        set(marktext,'Visible','on')
    end
    %End of startgamefcn
   

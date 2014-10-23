 %Start of play
    function playfcn(~,~)
        %Reading player's move
        x=get(xinputbox,'Value');
        y=get(yinputbox,'Value');
        row=ceil(y(1)-0.5);
        col=ceil(x(1)-0.5);
        %Checking player's move
        endturn=checkmove(row,col,playermark,commark);
        %Updating games for vs COM mode
        if endturn==1
        %if player's is valid
            %Updating board
            playermark(row,col)=1;
            drawboard(playermark,commark)
            %Checking board for winner
            winner=checkboard(playermark,commark);
            if ~isempty(winner)
                set(xinputbox,'Enable','off')
                set(yinputbox,'Enable','off')
                set(markbutton,'Enable','off')
                set(marktext,'Visible','off')
                if strcmpi(winner,'p')
                    set(instructionbox,'String',['Congratulations!',...
                                                 ' You win!!!'])
                elseif strcmpi(winner,'c')
                    set(instructionbox,'String',['You lose!',...
                                                 ' Press Start to retry!'])
                elseif strcmpi(winner,'d')
                    set(instructionbox,'String',['It is a draw.',...
                                                 ' Press Start to retry!'])
                end
            end
            %COM's move
            if isempty(winner)
                commark=commove(playermark,commark);
            end
            %Waiting for player's next move
            set(instructionbox,'String',['Your turn, choose your mark',...
                                         ' and press enter...'])
            %Checking board for winner
            winner=checkboard(playermark,commark);
            if ~isempty(winner)
                set(xinputbox,'Enable','off')
                set(yinputbox,'Enable','off')
                set(markbutton,'Enable','off')
                set(marktext,'Visible','off')
                if strcmpi(winner,'p')
                    set(instructionbox,'String',['Congratulations!',...
                                                 ' You win!!!'])
                elseif strcmpi(winner,'c')
                    set(instructionbox,'String',['You lose!',...
                                                 ' Press Start to retry!'])
                elseif strcmpi(winner,'d')
                    set(instructionbox,'String',['It is a draw.',...
                                                 ' Press Start to retry!'])
                end
            end
        else
        %if player's is not valid
            set(instructionbox,'String',['Cannot choose that spot!',...
                                         ' Choose another spot!'])
        end
    end

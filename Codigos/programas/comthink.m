 %Start of comthink
    function [row,col]=comthink(playermark,commark)
        score=zeros(3);
        %Basic thinking
        for i=1:3
            for j=1:3
                score(i,j)=sum(commark(i,:))+sum(commark(:,j))-...
                           sum(playermark(i,:))-sum(playermark(:,j));
            end
        end
        score(1,1)=score(1,1)-playermark(2,2)-playermark(3,3)+...
                              commark(2,2)+commark(3,3);
        score(3,3)=score(3,3)-playermark(2,2)-playermark(1,1)+...
                              commark(2,2)+commark(1,1);
        score(3,1)=score(3,1)-playermark(2,2)-playermark(1,3)+...
                              commark(2,2)+commark(1,3);
        score(1,3)=score(1,3)-playermark(2,2)-playermark(3,1)+...
                              commark(2,2)+commark(3,1);
        score(2,2)=score(2,2)-playermark(1,1)-playermark(3,3)+...
                              playermark(1,3)+playermark(3,1)+...
                              commark(1,1)+commark(3,3)+...
                              commark(1,3)+commark(3,1);
        %Offensive thinking
        for i=1:3
            if ((commark(i,1)==1)&&(commark(i,2)==1))
                score(i,3)=Inf;
            end
            if ((commark(i,1)==1)&&(commark(i,3)==1))
                score(i,2)=Inf;
            end
            if ((commark(i,2)==1)&&(commark(i,3)==1))
                score(i,1)=Inf;
            end
            if ((commark(1,i)==1)&&(commark(2,i)==1))
                score(3,i)=Inf;
            end
            if ((commark(1,i)==1)&&(commark(3,i)==1))
                score(2,i)=Inf;
            end
            if ((commark(2,i)==1)&&(commark(3,i)==1))
                score(1,i)=Inf;
            end
        end
        if ((commark(1,1)==1)&&(commark(2,2)==1))
            score(3,3)=Inf;
        end
        if ((commark(1,1)==1)&&(commark(3,3)==1))
            score(2,2)=Inf;
        end
        if ((commark(2,2)==1)&&(commark(3,3)==1))
            score(3,3)=Inf;
        end
        if ((commark(3,1)==1)&&(commark(2,2)==1))
            score(1,3)=Inf;
        end
        if ((commark(1,3)==1)&&(commark(3,1)==1))
            score(2,2)=Inf;
        end
        if ((commark(1,3)==1)&&(commark(2,2)==1))
            score(3,1)=Inf;
        end
        %Defensive thinking
        for i=1:3
            if ((playermark(i,1)==1)&&(playermark(i,2)==1))
                score(i,3)=score(i,3)+100;
            end
            if ((playermark(i,1)==1)&&(playermark(i,3)==1))
                score(i,2)=score(i,2)+100;
            end
            if ((playermark(i,2)==1)&&(playermark(i,3)==1))
                score(i,1)=score(i,1)+100;
            end
            if ((playermark(1,i)==1)&&(playermark(2,i)==1))
                score(3,i)=score(3,i)+100;
            end
            if ((playermark(1,i)==1)&&(playermark(3,i)==1))
                score(2,i)=score(2,i)+100;
            end
            if ((playermark(2,i)==1)&&(playermark(3,i)==1))
                score(1,i)=score(1,i)+100;
            end
        end
        if ((playermark(1,1)==1)&&(playermark(2,2)==1))
            score(3,3)=score(3,3)+100;
        end
        if ((playermark(1,1)==1)&&(playermark(3,3)==1))
            score(2,2)=score(2,2)+100;
        end
        if ((playermark(2,2)==1)&&(playermark(3,3)==1))
            score(1,1)=score(1,1)+100;
        end
        if ((playermark(3,1)==1)&&(playermark(2,2)==1))
            score(1,3)=score(1,3)+100;
        end
        if ((playermark(1,3)==1)&&(playermark(3,1)==1))
            score(2,2)=score(2,2)+100;
        end
        if ((playermark(1,3)==1)&&(playermark(2,2)==1))
            score(3,1)=score(3,1)+100;
        end
        %Avoiding chosen spot
        for i=1:3
            for j=1:3
                if (playermark(i,j)==1)||(commark(i,j)==1)
                    score(i,j)=-Inf;
                end
            end
        end
        [rowtemp,coltemp]=find(score==max(max(score)));
        if numel(rowtemp)==1
            row=rowtemp;
            col=coltemp;
        else
            choice=ceil(rand*numel(rowtemp));
            row=rowtemp(choice);
            col=coltemp(choice);
        end
    end
    %End of comthink

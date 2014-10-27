function TicTacToeLite
%--------------------------------------------------------------------------
%TicTacToeLite
%Version 1.01
%Created by Stepen (modified from TIcTacToe.m)
%Created 29 March 2011
%Last modified 15 October 2010
%--------------------------------------------------------------------------
%TicTacToe starts GUI game of a simple tic-tac-toe.
%--------------------------------------------------------------------------
%How to play tic-tac-toe:
%Each player takes turn to mark their symbol into a 3x3 box with their own 
%marks (either cross and circle). To win, a player must create a straight
%line of three marks of his while avoiding the other player to do so.
%--------------------------------------------------------------------------

%CodeStart-----------------------------------------------------------------
%Reseting MATLAB environment
    close all
    clear all
%Declaring global variable
    playermark=zeros(3);
    commark=zeros(3);
    winner=[];
%Generating GUI
    ScreenSize=get(0,'ScreenSize');
    mainwindow=figure('Name','Tic-Tac-Toe',...
                      'NumberTitle','Off',...
                      'Menubar','none',...
                      'Resize','off',...
                      'Units','pixels',...
                      'Position',[0.5*(ScreenSize(3)-384),...
                                  0.5*(ScreenSize(4)-400),...
                                  384,400]);
    axes('Parent',mainwindow,...
         'Units','normalized',...
         'Position',[0.1 0.275 0.8 0.7]);
    uicontrol('Parent',mainwindow,...
              'Style','pushbutton',...
              'String','Start Game',...
              'Units','normalized',...
              'Position',[0.05 0.15 0.2 0.05],...
              'Callback',@startgamefcn);
    uicontrol('Parent',mainwindow,...
              'Style','pushbutton',...
              'String','Close Game',...
              'Units','normalized',...
              'Position',[0.75 0.15 0.2 0.05],...
              'Callback',@closegamefcn);
    marktext=uicontrol('Parent',mainwindow,...
                       'Style','text',...
                       'String','Choose your spot',...
                       'Visible','off',...
                       'Units','normalized',...
                       'Position',[0.375 0.205 0.25 0.04]);
    markbutton=uicontrol('Parent',mainwindow,...
                         'Style','pushbutton',...
                         'String','Mark Spot!',...
                         'Enable','off',...
                         'Units','normalized',...
                         'Position',[0.4 0.1 0.2 0.04],...
                         'Callback',@playfcn);
    xinputbox=uicontrol('Parent',mainwindow,...
                        'Style','popupmenu',...
                        'String',{'Left','Center','Right'},...
                        'Value',2,...
                        'Enable','off',...
                        'Units','normalized',...
                        'Position',[0.3 0.15 0.15 0.05]);
    yinputbox=uicontrol('Parent',mainwindow,...
                        'Style','popupmenu',...
                        'String',{'Top','Center','Bottom'},...
                        'Value',2,...
                        'Enable','off',...
                        'Units','normalized',...
                        'Position',[0.55 0.15 0.15 0.05]);
    instructionbox=uicontrol('Parent',mainwindow,...
                             'Style','text',...
                             'String',['Click Start Game button to',...
                                       ' begin the game...'],...
                             'Units','normalized',...
                             'Position',[0.1 0.05 0.8 0.04]);
%Initiating graphics
    hold on
    drawboard(playermark,commark)
%Listing LocalFunction
    %Start of drawboard
   
    
    %Start of drawcross
   
  
   

   

end
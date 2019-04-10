clear
clc
[h,msg] = IOPort('OpenSerialPort','COM1','BaudRate=110')

rw=1;
cond=1;
numTrial=10;

triggers=zeros(numTrial, 1);

screenNumber=0;
window=Screen(screenNumber,'OpenWindow', []); 
FlushEvents;
ListenChar;
ListenChar(2);
HideCursor;
%    
% myimgfile='magic_eye_chair.jpg';
% ima=imread(myimgfile, 'jpg');
% white=WhiteIndex(window);
% 
      
%  for k=1:numTrial;
%  
%      
%  Screen('PutImage', window, ima); % put image on screen
%  Screen(window, 'Flip');
%  
%   for k2=1:3;
%   
%    KbWait;
%           
%            triggers(rw , 1)=cond;
%             [nwritten, when, errmsg, prewritetime, postwritetime,lastchecktime] = IOPort('Write',h, uint8(0)); %trigger
%           cond=cond+1;
%           rw=rw+1;
%           if cond==4;
%               cond=1;
%           else
%           end
%           
%          FlushEvents;  
%            WaitSecs(.25);
%       end
% 
%  
%  WaitSecs(1);
%  
%  Screen(window,'FillRect', white);
% 
% Screen(window, 'Flip');
% 
% pause(1);
%  end


 Screen('TextSize',window, 30);
 Screen('TextFont',window, 'Calibri');
 Screen('DrawText', window, 'Press any key to continue', 350, 250, [51, 153, 204]); 
            
       
            Screen('Flip',window);
            
            KbWait;
            

  %myimgfile='magic_eye_chair.jpg';
  myimgfile='NoDot.JPG';
ima=imread(myimgfile, 'jpg');
white=WhiteIndex(window);

      
 for k=1:numTrial;
 
     
 Screen('PutImage', window, ima); % put image on screen
 Screen(window, 'Flip');
 
  for k2=1:3;
  
   KbWait;
          
           triggers(rw , 1)=cond;
            [nwritten, when, errmsg, prewritetime, postwritetime,lastchecktime] = IOPort('Write',h, uint8(0)); %trigger
          cond=cond+1;
          rw=rw+1;
          if cond==4;
              cond=1;
          else
          end
          
         FlushEvents;  
           WaitSecs(.25);
      end

 
 WaitSecs(1);
 
 Screen(window,'FillRect', white);

Screen(window, 'Flip');

pause(1);
 end


 Screen('TextSize',window, 30);
 Screen('TextFont',window, 'Calibri');
 Screen('DrawText', window, 'Press any key to continue', 350, 250, [51, 153, 204]); 
            
       
            Screen('Flip',window);
            
            KbWait;
  
myimgfile='magic_eye_rings.jpg';
ima=imread(myimgfile, 'jpg');
white=WhiteIndex(window);

      
 for k=1:numTrial;
 
     
 Screen('PutImage', window, ima); % put image on screen
 Screen(window, 'Flip');
 
  for k2=1:3;
  
   KbWait;
          
           triggers(rw , 1)=cond;
            [nwritten, when, errmsg, prewritetime, postwritetime,lastchecktime] = IOPort('Write',h, uint8(0)); %trigger
          cond=cond+1;
          rw=rw+1;
          if cond==4;
              cond=1;
          else
          end
          
         FlushEvents;  
           WaitSecs(.25);
      end

 
 WaitSecs(1);
 
 Screen(window,'FillRect', white);

Screen(window, 'Flip');

pause(1);
 end

 

 Screen('TextSize',window, 30);
 Screen('TextFont',window, 'Calibri');
 Screen('DrawText', window, 'Press any key to end', 350, 250, [51, 153, 204]); 
            
       
            Screen('Flip',window);
            
            KbWait;
            
  Screen('CloseAll');
IOPort('Close', h)

magicTrig=triggers;
save magicTrig magicTrig
function []=processor(results,lattice,state,geo,ref,stability);

 questions(17);
 quest=input('Enter choice from above please: ');

    if isempty(quest)
       quest=0;
       terror(9)
       return
               
    else
       JID=input('Enter Job IDentity tag (JID): ','s');
    end
    
    
    if isempty(JID)
        JID=('trial');
        disp(' ')
        disp(' JID defaulted to "trial" ');
        disp(' ')
    end
               
        
   switch quest
        case 1    
            solverloop6(results,1,JID,lattice,state,geo,ref);%Simple solution
	   case 2 
			equilibrium1(results,state,geo,lattice,ref);
	   case 3
			LongStab1(results,JID,lattice,state,geo,ref,stability);
%         case 2
%             %Parameter sweep loop
%             quest2=questions(18);
%              switch quest2
%                 case 1 %Alpha sweep
%                     solverloop5(results,2,JID,lattice,state,geo,ref);
%                 case 2 %Beta sweep
%                     solverloop5(results,3,JID,lattice,state,geo,ref);
%                 case 3 %Delta sweep
%                     solverloop5(results,4,JID,lattice,state,geo,ref);
%                 case 4 %P sweep
%                     solverloop5(results,5,JID,lattice,state,geo,ref);
%                 case 5 %Q sweep
%                     solverloop5(results,6,JID,lattice,state,geo,ref);
%                 case 6 %R sweep
%                     solverloop5(results,7,JID,lattice,state,geo,ref);
%                 otherwise
%              end
%        case 3
%            solverloop5(results,13,JID,lattice,state,geo,ref); %Trimmed point
%        case 4
%            solverloop5(results,22,JID,lattice,state,geo,ref); %Trimmed polar
%        case 5
%            solverloop5(results,16,JID,lattice,state,geo,ref); %Unsteady values
%        case 6
%            solverloop5(results,17,JID,lattice,state,geo,ref); %Unsteady all values
%       
%        
%        case 7
%             %Friction loop
%             quest2=questions(19);
%             
%             switch quest2
%                 case 1
%                     solverloop5(results,10,JID,lattice,state,geo,ref);%Flat plate
%                 case 2    
%                     solverloop5(results,18,JID,lattice,state,geo,ref);%Strip theory, inline
%                 case 3 
%                     solverloop5(results,19,JID,lattice,state,geo,ref);%Strip theory, external
%                 case 4 
%                     solverloop5(results,23,JID,lattice,state,geo,ref);%Blunt body estimation
%                 otherwise
%             end
%        case 8
%            solverloop5(results,14,JID,lattice,state,geo,ref);% Grid convergence
%        case 9
%            solverloop5(results,15,JID,lattice,state,geo,ref);% Stall angle
%        
%        case 10
%            solverloop5(results,20,JID,lattice,state,geo,ref);%
%        case 11
%            solverloop5(results,21,JID,lattice,state,geo,ref);% Static margin
%        case 12
%             solverloop5(results,24,JID,lattice,state,geo,ref);% Strip alpha sweep

       otherwise
   end
                
               
                
                    
      
                
                
                    

   
function mt  = mutate(cloneddata)

mt = cloneddata;
shift = 1;

 for i = 1:length(mt) % loop over the cloned data
     
     % mutate the first element of train vector
     if(mt(i,1) > 0)
         if (rand < 0.5)
             mt(i,1) = mt(i,1) + shift;
         else
             mt(i,1) = mt(i,1) - shift;
         end      
     else
          if (rand < 0.5)
             mt(i,1) = mt(i,1) + shift;
          end
     end
     
     % mutate the second element of train vector
     if(mt(i,2) > 0)
         if (rand < 0.5)
             mt(i,2) = mt(i,2) + shift;
         else
             mt(i,2) = mt(i,2) - shift;
         end      
     else
          if (rand < 0.5)
             mt(i,2) = mt(i,2) + shift;
          end
     end
     
 end
 
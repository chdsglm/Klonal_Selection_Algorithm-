function [min_values,min_index, max_values, max_index]  = uzaklikbul(train, test)

[a b] = size(train);
[c d] = size(test);

% declare variables to store minimum values and their indecies
min_values = 1:c;
min_index = 1:c;
% declare variables to store maximum values and their indecies
max_values = 1:c;
max_index = 1:c;


for i = 1:c % loop over test set
    % reset the variables for every test element
    minimum = 100000000;
    index_minimum = -1;
    maximum = 0;
    index_maximum = -1;
    
    for j = 1:a % loop over train set
        
        val = sqrt( (test(i,1)-train(j,1))^2 + (test(i,2)-train(j,2))^2 );
        
        if (val < minimum)
            minimum = val;
            index_minimum = j;
        end
        
        if (val >= maximum)
            maximum = val;
            index_maximum = j;
        end
               
    end
    
    min_values(i) = minimum;
    min_index(i) = index_minimum;
    max_values(i) = maximum;
    max_index(i) = index_maximum;
    
    hold on
    
    for j = 1:c % loop over train set
    plot(test(j,1),test(j,2), '+')
    end
    hold on
    for j = 1:c % loop over train set
    plot(train(min_index(j),1),train(min_index(j),2), '.')
    end
    
    
end

clc
clear all

data = xlsread('data1.xlsx');
[r c] = size (data);
train = data (1:275,1:c);
test = data (276:r, 1:c);


    
    
% Calculate the closeness vectors to the test set
sprintf('Calculating the closeness')
[mins, min_index, maxs, max_index]= uzaklikbul(train, test);

% Clone the closest vectors
sprintf('Cloning the closeness vector')
cloneddata = clone(train, min_index);

% Mutate the cloned data
sprintf('Mutating the closeness vector')
mutateddata = mutate(cloneddata);

% Disregarding the farthest points from the train set
% disregardeddata = disregard(train, max_index);
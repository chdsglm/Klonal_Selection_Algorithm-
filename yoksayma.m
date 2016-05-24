function cl  = disregard(train, max_index)
%clone(train, min_index)

c = train(max_index,:);
cl = c;
cl(119:236,:) = c;
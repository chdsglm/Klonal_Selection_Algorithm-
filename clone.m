function cl  = clone(train, min_index)
c = train(min_index,:);
cl = c;
cl(119:236,:) = c;
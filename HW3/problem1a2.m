tgt0 = @(theta) theta * exp( -2 * theta );

hold all;
ezplot( tgt0, 0:0.5:5 );

hold off;

mu = [3 3];
sigma = [0.5 0; 0 0.5];

r = mvnrnd( mu, sigma, 100 );

hold all;
plot( r(:,1) , r(:,2), '*' );

d1 = @(x,y) (x-3)^2 + (y-3)^2 - 0.25;
d2 = @(x,y) (x-3)^2 + (y-3)^2 - 1;
d4 = @(x,y) (x-3)^2 + (y-3)^2 - 1.5^2;
d3 = @(x,y) (x-3)^2 + (y-3)^2 - 4;

ezplot( d1 );
ezplot( d2 );
ezplot( d3 );
ezplot( d4 );

hold off;

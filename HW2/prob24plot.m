mu = [3,3];
sigma = [1.0 0; 0 1.0];

r = mvnrnd( mu, sigma, 100 );

hold all;
plot( r(:,1) , r(:,2), '*' );

d = @(x,r) ( ( x-mu(1) ) / sigma(1,1) ).^2 + ( (x-mu(2)) / sigma(2,2) ).^2 - r.^2;

ezplot( d );
hold off;

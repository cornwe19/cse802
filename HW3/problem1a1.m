%clf;

theta = 1;

lt0 = -5:0.5:0;
xlt0 = 0 * lt0;

gt0 = 0:0.0001:5;
xgt0 = theta * exp( -1 * theta * gt0 );

n = size( gt0, 2 );
theta_hat =  1 / ( ( 1 / n ) * sum( gt0 ) ); 

hold all;

plot( lt0, xlt0 );
plot( gt0, xgt0 );
line( [theta_hat,theta_hat], [0,1] );

text( theta_hat, 0.9, ' \leftarrow \theta_h for large n' );

hold off;

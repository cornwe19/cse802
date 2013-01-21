mu1 = [1;2];
sigma1 = [2 1; 1 1];

mu2 = [1;-2];
sigma2 = [1 1; 1 2];

Pw1 = 0.3;
Pw2 = 0.7;

maxLikelihoodX = @(x) -0.5 * x^2 + 2 * x - 2 - 0.5*log( det( sigma1 ) ) + 0.5*x^2 - x + 0.5 + 0.5*log( det( sigma2 ) );
bayesX = @(x) -0.5 * x^2 + 2 * x - 2 - 0.5*log( det( sigma1 ) ) - log(Pw1) + 0.5*x^2 - x + 0.5 + 0.5*log( det( sigma2 ) ) + log(Pw2);

hold all;

r1 = mvnrnd( mu1, sigma1, 500 );
plot( r1(:,1),r1(:,2),'r*');

r2 = mvnrnd( mu2, sigma2, 500 );
plot( r2(:,1), r2(:,2), 'b*' );

r3 = mvnrnd( mu1, sigma1, 50 );
plot( r3(:,1), r3(:,2), 'kx' );

r4 = mvnrnd( mu2, sigma2, 50 );
plot( r4(:,1), r4(:,2), 'cx' );

mlplot = ezplot( maxLikelihoodX );
set( mlplot, 'Color', 'g' );
bplot = ezplot( bayesX );
set( bplot, 'Color', 'm' );

hold off;

avSigma = ( sigma1 + sigma2 ) / 2

k = 0.125 * (mu1-mu2)' * avSigma^-1 * (mu1 - mu2 ) + 0.5 * log( det(avSigma) / sqrt( det(sigma1) * det( sigma2) ) )
perr = sqrt( Pw1 * Pw2 ) * exp( -k )
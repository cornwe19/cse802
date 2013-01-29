% Load the results from Problem2a first
run ./problem2a.m;

Pw1 = 0.3;
Pw2 = 0.7;

bayesX = @(x) -0.5 * ((x - mu1)' * sigma1^-1 * (x - mu1)) - 0.5 * log( det( sigma1 ) ) + log(Pw1) - ( - 0.5 * ((x-mu2)' * sigma2^-1 * (x-mu2)) - 0.5 * log( det( sigma2 ) ) + log(Pw2) );
bayesEstX = @(x) -0.5 * (( x - estimated_mu1 )' * estimated_sigma1^-1 * ( x - estimated_mu1 )) - 0.5 * log( det( estimated_sigma1 ) ) + log( Pw1 ) - (- 0.5 * ( (x-estimated_mu2)' * estimated_sigma2^-1 * (x-estimated_mu2) ) - 0.5 * log( det( estimated_sigma2 ) ) + log( Pw2 ) );

mlX = @(x) -0.5 * ((x - mu1)' * sigma1^-1 * (x - mu1)) - 0.5 * log( det( sigma1 ) ) - ( - 0.5 * ((x-mu2)' * sigma2^-1 * (x-mu2)) - 0.5 * log( det( sigma2 ) ) );

hold all;

ezplot( bayesX );
ezplot( bayesEstX );
ezplot( mlX );

hold off;

% Load the results from Problem2a first
run ./problem2a.m;

Pw1 = 0.3;
Pw2 = 0.7;

bayesX = @(x1,x2) -0.5 * (([x1;x2] - mu1)' * sigma1^-1 * ([x1;x2] - mu1)) - 0.5 * log( det( sigma1 ) ) + log(Pw1) - ( - 0.5 * (([x1;x2]-mu2)' * sigma2^-1 * ([x1;x2]-mu2)) - 0.5 * log( det( sigma2 ) ) + log(Pw2) );
bayesEstX = @(x1,x2) -0.5 * (( [x1;x2] - estimated_mu1 )' * estimated_sigma1^-1 * ( [x1;x2] - estimated_mu1 )) - 0.5 * log( det( estimated_sigma1 ) ) + log( Pw1 ) - (- 0.5 * ( ([x1;x2]-estimated_mu2)' * estimated_sigma2^-1 * ([x1;x2]-estimated_mu2) ) - 0.5 * log( det( estimated_sigma2 ) ) + log( Pw2 ) );

hold all;

literalPlot = ezplot( bayesX );
set( literalPlot, 'Color', 'b' );
estPlot = ezplot( bayesEstX );
set( estPlot, 'Color', 'g' );

legend( [dataW1, dataW2, literalPlot, estPlot], 'W1', 'W2', 'Bayes Exact', 'Bayes Estimated');

hold off;

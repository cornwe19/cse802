% Standard distribution plots
muW1 = 1;
sigmaW1 = 1;
PxW1 = 1/2;
normcurvW1 = @(x) PxW1 * exp( -(x-muW1).^2./(2*sigmaW1^2) )/(sigmaW1*sqrt(2*pi))

muW2 = -1;
sigmaW2 = 1;
PxW2 = 1/2;

normcurvW2 = @(x) PxW2 * exp( -(x-muW2).^2./(2*sigmaW2^2) )/(sigmaW2*sqrt(2*pi))

lrls = 0.25

discriminantW1 = @(x) PxW1 * exp( -(x-muW1).^2./(2*sigmaW1^2) )/(sigmaW1*sqrt(2*pi)) - ( (1-lrls) * ( PxW1 * exp( -(x-muW1).^2./(2*sigmaW1^2) )/(sigmaW1*sqrt(2*pi)) + PxW2 * exp( -(x-muW2).^2./(2*sigmaW2^2) )/(sigmaW2*sqrt(2*pi)) ) )
discriminantW2 = @(x) PxW2 * exp( -(x-muW2).^2./(2*sigmaW2^2) )/(sigmaW2*sqrt(2*pi)) - ( (1-lrls) * ( PxW1 * exp( -(x-muW1).^2./(2*sigmaW1^2) )/(sigmaW1*sqrt(2*pi)) + PxW2 * exp( -(x-muW2).^2./(2*sigmaW2^2) )/(sigmaW2*sqrt(2*pi)) ) )

hold all;
ezplot( discriminantW1, [-3 3] );
ezplot( @(x) 0, [-3, 3] );
ezplot( discriminantW2, [-3 3] );
hold off;

% Feature Length
LFW1 = abs( random( 'normal', 0.250, 0.03, 10, 1 ) )
SFW1 = abs( random( 'normal', 0.125, 0.03, 10, 1 ) )
SMS1 = abs( random( 'normal', 1.000, 0.05, 10, 1 ) )
MS1  = abs( random( 'normal', 1.250, 0.05, 10, 1 ) )
HN1  = abs( random( 'normal', 0.190, 0.03, 10, 1 ) )

% Feature Thickness
LFW2 = abs( random( 'normal', 0.042, 0.03, 10, 1 ) )
SFW2 = abs( random( 'normal', 0.030, 0.03, 10, 1 ) )
SMS2 = abs( random( 'normal', 0.083, 0.03, 10, 1 ) )
MS2  = abs( random( 'normal', 0.092, 0.03, 10, 1 ) )
HN2  = abs( random( 'normal', 0.105, 0.01, 10, 1 ) )

M    = [LFW1 LFW2; SFW1 SFW2; SMS1 SMS2; MS1 MS2; HN1 HN2]

figure(1)
hold on;
plot( LFW1, LFW2, '+' );
plot( SFW1, SFW2, 'o' );
plot( SMS1, SMS2, '*' );
plot( MS1, MS2, 'x' );
plot( HN1, HN2, '.' );
hold off;
legend( 'Flat Washer 0.25', 'Flat Washer 0.125', 'Sheet Metal Screw', 'Machine Screw', 'Hex Nut' );
xlabel( 'Length' );
ylabel( 'Thickness' );

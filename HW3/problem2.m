% Sample set 1
mu1 = [1;2];
sigma1 = [2 1; 1 1];
n1 = 300;
s1 = mvnrnd( mu1, sigma1, n1 );

% Sample set 2
mu2 = [1; -2];
sigma2 = [1 1; 1 2];
n2 = 700;
s2 = mvnrnd( mu2, sigma2, n2 );

hold all;

plot( s1(:,1), s1(:,2), 'r+' );
plot( s2(:,1), s2(:,2), 'b+' );

hold off;

estimated_mu1 = ( (1/n1) * sum( s1 ) )'

summation = zeros(2,2);
for i = 1:n1,
	summation = summation + ( s1(i,:) - estimated_mu1' )' * (s1(i,:) - estimated_mu1' );
end
estimated_sigma1 = summation ./ n1

estimated_mu2 = ( (1/n2) * sum( s2 ) )'

summation = zeros(2,2);
for i = 1:n2,
	summation = summation + ( s2(i,:) - estimated_mu2' )' * (s2(i,:) - estimated_mu2' );
end
estimated_sigma2 = summation ./ n2

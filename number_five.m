n = (0:1:199);
x = input('Please enter a value for x(n) : ');
x = sin((3*pi*n)/100);
y = zeros(size(x));

 for i=1:length(n)
     if n(i)==0
         y(i) = -1.5*x(i) + 2*x(i+1) - 0.5*x(i+2);
     elseif n(i)<199
         y(i) = 0.5*x(i+1)-0.5*x(i-1);
     else
         y(i) = 1.5*x(i)-2*x(i-1)+0.5*x(i-2);
     end
 end

 plot(n,x,'g-');
 hold on; 
 plot(n,y,'m-');
 hold off; 
 title('Plot of x(n) and y(n)');
 xlabel('n');
 legend('x','y');


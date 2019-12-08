x1 = input('Enter x value of the first point: ');
y1 = input('Enter y value of the first point: ');

x2 = input('Enter x value of the second point: ');
y2 = input('Enter y value of the second point: ');

x3 = input('Enter x value of the third point: ');
y3 = input('Enter y value of the third point: ');

x12 = x1 - x2;  
x13 = x1 - x3;  
  
y12 = y1 - y2;  
y13 = y1 - y3;  
  
y31 = y3 - y1;  
y21 = y2 - y1;  
  
x31 = x3 - x1;  
x21 = x2 - x1;  
  
cx13 = (x1.*x1) - (x3.*x3);  
cy13 = (y1.*y1) - (y3.*y3);  

cx21 = (x2.*x2) - (x1.*x1);  
cy21 = (y2.*y2) - (y1.*y1);  
    
  
m = (((cx13) .* (x12) + (cy13) .* (x12) + (cx21) .* (x13) + (cy21) .* (x13)) ./ (2 .* ((y31) .* (x12) - (y21) .* (x13)))); 
              
          
n = (((cx13) .* (y12) + (cy13) .* (y12) + (cx21) .* (y13) + (cy21) .* (y13)) ./ (2 .* ((x31) .* (y12) - (x21) .* (y13))));  

o = (-(x1.*x1) - (y1.*y1) -  (2 .* n .* x1) - (2 .* m .* y1));  

h = -n;  
k = -m;  
r = (h .* h + k .* k - o).*(h .* h + k .* k - o);
D = -2.*h;
E = -2.*k;
F = (h.*h)+(k.*k)-(r.*r);
C = [h,k];
V = [D,E,F];
    
disp('Center: '); 
disp(C);

disp('Radius: ');
disp(r);

disp('Vector: ');
disp(V);

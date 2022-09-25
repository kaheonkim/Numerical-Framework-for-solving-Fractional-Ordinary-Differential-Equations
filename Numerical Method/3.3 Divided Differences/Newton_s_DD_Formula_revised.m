%x(1)=input('x0 값을 입력하세요.');
%y(1)=input('y0 값을 입력하세요.');

%x(2)=input('x1 값을 입력하세요.');
%y(2)=input('y1 값을 입력하세요.');

%x(3)=input('x2 값을 입력하세요.');
%y(3)=input('y2 값을 입력하세요.');

%x(4)=input('x3 값을 입력하세요.');
%y(4)=input('y3 값을 입력하세요.');

%x(5)=input('x4 값을 입력하세요.');
%y(5)=input('y4 값을 입력하세요.');
A=zeros(4,5);

x(1)=1;
x(2)=1.3;
x(3)=1.6;
x(4)=1.9;
x(5)=2.2;
z=1.5;

y(1)=0.7651977;
y(2)=0.6200860;
y(3)=0.4554022;
y(4)=0.2818186;
y(5)=0.1103623;

for i=1:5
    A(i,1)=y(i);
end
for j=2:5
    for i=j:5
        A(i,j)=(A(i,j-1)-A(i-1,j-1))/(x(i)-x(i-j+1));
    end
end


function y=P(x,y1,y2,y3,y4,y5,x1,x2,x3,x4)
y=y1-y2*(x-x1)-y3*(x-x1)*(x-x2)+y4*(x-x1)*(x-x2)*(x-x3)...
    +y5*(x-x1)*(x-x2)*(x-x3)*(x-x4);
end


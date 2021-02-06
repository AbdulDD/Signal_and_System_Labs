%Program # 04
function [add,sub,mul]=arith(x,y) % this is the main function
add = a(x,y); % calling a function
sub = s(x,y); % what value of sub did you get
mul = m(x,y);
end
function a1 = a(x,y)
a1=x+y;
end
function s1=s(x,y)
s1=x-y;
end
function m1=m(x,y)
m1=x*y;
end
a = 'flag';
[h,w,s] = size(a);
count = 0 ;

for x=1:w
    %go for x times--1 until the width
    
    for y=1:h
        %go for y times--1 until the height
        r = r + a(x,y,1);
        b = b + a(x,y,2);
        g = g + a(x,y,3);
        count = count + 1;
    
    end
    
end
R2 = r/count ;
B2 = b/count ;
G2 = g/count ;
%average rgb pixels

imshow(c)
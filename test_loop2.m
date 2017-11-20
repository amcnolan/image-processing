a = zeros(10,5);
[h,w,s] = size(a);
c=1;

for n=1:w
    %columns 1 to w


    for m=1:h
        %rows 1 to h

        a(m,n) = c;
        %matrix of row m and n equals c
        %where c is incrementally higher numbers
        c=c+1;


    end

end
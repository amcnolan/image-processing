a = zeros(10,1);
%we want a matrix of zeros with ten rows and one column
[h,w,s]=size(a);
%asking the height, widths, and slices of said matrix
for k=1:h
    %iterating numbers from top (1) to h (height/bottom)
    
    a(k)=k;
    %a(k) which is position equals the number it is in
    
end    
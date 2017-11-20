function grey_image = greyimage2(color_image)

% color_image= double(imread('cameraman.tif')); 
%read the image with double precision values
[h,w,s] = size(color_image);
%height, witdh, slice
count = 0;
r = double(color_image(:,:,1));
%r is the first slice of all rows and columns
g = double(color_image(:,:,2));
%g is the second slice of all rows and columns
b = double(color_image(:,:,3));
%b is the third slice of all rows and columns
grey_image = zeros(h,w,1);
%create a zeros matrix to put the averaged values into
%of the exact same size as the RGB image

for x = 1 : w
    %repeat x times--1 until the width
    
    for y = 1 : h
        
        % Print out the element we're working on
        % for this iteration of the loop.
        fprintf('(x, y) = (%d, %d)\n', x, y);
        
        %repeat y times--1 until the height
        grey_image(y,x) = (r(y,x) + g(y,x) + b(y,x))/3;
      
    
    end
    
end

imshow(uint8(grey_image))
%show the image in 8-bit data

end

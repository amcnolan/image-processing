function blurimage = kernelmatrix(grayscale_image_arbitrary, matrix)

%read the grayscale image
[h, w] = size(grayscale_image_arbitrary);
%find the size of the grayscale image
%count = 0;

[h1, w1] = size(matrix);
%h1 and w1 are the height and width of the matrix

kernelradius_h = (h1-1)/2;
kernelradius_w = (w1-1)/2;


n = h1 .* w1;
% n is the number of elements in the matrix

blurimage = zeros(h-kernelradius_h*2, w-kernelradius_w*2);
%create a zero matrix with the above dimensions


for x = kernelradius_w + 1 : w - kernelradius_w
    %for x in the above dimensions (so the image is not too large
    %for the zero matrix
    
    for y = kernelradius_h + 1 : h - kernelradius_h
        %for x in the above dimensions (so the image is not too large
        %for the zero matrix)
        
        pixels = grayscale_image_arbitrary(y - kernelradius_h: y + kernelradius_h,...
            x - kernelradius_w: x + kernelradius_w);
        %creates a variable pixels with all the 
        
        multiply_average = matrix(:) .* pixels(:);
       
        average_value = sum(multiply_average)/n;
        
        blurimage(y-kernelradius_h,x-kernelradius_w) = average_value;
        
    end
    
    
end

  

subplot(1, 2, 1);
imshow(uint8(grayscale_image_arbitrary));

subplot(1, 2, 2);
imshow(uint8(blurimage));


end
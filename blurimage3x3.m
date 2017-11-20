function blurimage = blurimage3x3(grayscale_image_3x3); 
%read the grayscale image
[h, w] = size(grayscale_image_3x3);
%find the size of the grayscale image
count = 0;
blurimage = zeros(h-2, w-2);
%create a zero matrix called blurimage
%with h-2 rows and w-2 columns

for x = 2 : w - 1
    %for x = 1 until the height - 1
    
    for y = 2 : h - 1
        %for y = 1 until the width - 1
       
        %tell it which pixels to get
        %get the pixels in a 3x3 array
       % pixels = [grayscale_image(x-1,y-1), ...
%                   grayscale_image(x,y-1) , ...
%                   grayscale_image(x+1,y-1) ; ...
%                   grayscale_image(x-1,y) , ...
%                   grayscale_image(x,y),...
%                   grayscale_image(x+1,y);...
%                   grayscale_image(x-1,y+1),...
%                   grayscale_image(x,y+1),...
%                   grayscale_image(x+1,y+1)];
              
        pixels = grayscale_image_3x3(y-1:y+1, x-1:x+1);

        
        %use the average function from before to average the array
        blurimage(y-1,x-1) = averagematrix(pixels);
        
    
       %in the blurimage matrix at (x,y)
       %input the value of the target pixel
       %plus the 9 immediately surrounding pixels 
       %all divided by 9
       
	   
        
    end
    
end 


% subplot(1, 2, 1);
% imshow(uint8(grayscale_image_3x3));
% 
% subplot(1, 2, 2);
% imshow(uint8(blurimage));


end

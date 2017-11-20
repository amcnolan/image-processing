function blurimage = gaussianblur_arbitrarykernel(grayscale_image_arbitrary, kernelsize)

%read the grayscale image
[h, w] = size(grayscale_image_arbitrary);
%find the size of the grayscale image
%count = 0;
kernelradius = (kernelsize - 1)/2;
blurimage = zeros(h-kernelradius*2, w-kernelradius*2);
%create a zero matrix called blurimage
%with h-2 rows and w-2 columns

%kernelsize = 3;


for x = (kernelradius + 1) : w - kernelradius
    %for x = 1 until the height - 1
    
    for y = (kernelradius + 1) : h - kernelradius
        %for y = 1 until the width - 1
       
        %tell it which pixels to get              
        pixels = grayscale_image_arbitrary(y-kernelradius:y+kernelradius, ...
            x-kernelradius:x+kernelradius);

        
        %use the average function from before to average the array
        blurimage(y-kernelradius,x-kernelradius) = averagematrix(pixels);
        
    
       %in the blurimage matrix at (x,y)
       %input the value of the target pixel
       %plus the 9 immediately surrounding pixels 
       %all divided by 9
       
	   
        
    end
    
end 


subplot(1, 2, 1);
imshow(uint8(grayscale_image_arbitrary));

subplot(1, 2, 2);
imshow(uint8(blurimage));


end
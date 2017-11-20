unblurred_image = double(imread('cameraman.tif'));
%read the cameraman image
kernelsize = 3;
%determines the kernel size
matrix = ones(kernelsize,kernelsize);
kernel_matrix = kernelmatrix(unblurred_image, matrix);
%makes the image grayscale according to the 3x3 function
grayscale_image_arbitrary = gaussianblur_arbitrarykernel(unblurred_image, kernelsize);
%makes the image grayscale according to the arbitrary function

[h,w, ~] = size(kernel_matrix);
%determines size of grayscale image
%only 3x3 because the arbitrary one should be the same size

n = h .* w;
% n is the number of elements in the array

summation = 0;
%starts the summation at index 0

for x = 1 : w
    
    for y = 1 : h
          summation = summation + (kernel_matrix(y,x)-...
              grayscale_image_arbitrary(y,x)) .^2;
          %subtracts each element from the other mirroring element
          %squares it
          %and adds it to the previously determined summation variable
          
                  
    
    end
   

end

  
comparison_3x3 = (1/n) .* summation;
%divides the summation variable by 1/n (averages)

fprintf(1,"result is : %0.3e\n", comparison_3x3);
%shows the MSE between the two matrices
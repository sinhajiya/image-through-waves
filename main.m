% 1. LOADING THE IMAGE
originalImage = imread('image3.jpg');
grayImage = rgb2gray(originalImage); 

%% 

% 2. APPLYING FOURIER TRANSFORM TO CONVERT THE SPACE DOMAIN TO FREQUENCY
% DOMAIN
ft = fft2(double(grayImage));

% 3. Shift the zero frequency component to the center
ft_shifted = fftshift(ft);

%%

% 4. Initialize a reconstructed image
[rows, cols] = size(ft_shifted);     % Size of image same as previous
reconstruction = zeros(rows, cols);  % Empty reconstruction image 

%%
% 5. Loop to add frequency components

% num_portions: # steps to divide the process into

num_portion = 20;  % the ft_shifted will be converted to num_portion portions for 
                   % reconstruction

for step = 1:num_portion
    % For step value, add a portion of waves from the shifted fourier
    % transform to the final image
    no_coeffecients = round(step * (rows * cols) / num_portion);  % #coeffeints to add to reconstructed image
    reconstruction(1:no_coeffecients) = ft_shifted(1:no_coeffecients);  % Add portion of image on top of the reconstructed image
    
    % Inverse Fourier Transform to reconstruct image
    reconstructed_image = abs(ifft2(ifftshift(reconstruction)));

    % Saving step wise image to device
    filename = sprintf('E:/codes/image-through-waves/images3/reconstructed_step_%d.png', step);
    imwrite(uint8(reconstructed_image), filename);

end

% Display the final reconstructed image
figure;
imshow(reconstructed_image, []), title('Final Reconstructed Image');
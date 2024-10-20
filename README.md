# Generating Images with waves

Creating images by a combination of different waves.

### Concept:

Each image is made of combination of waves of different wavelength, frequency and amplitudes.
Here, I have implemented a matlab code to visualize the same. 

### Steps I followed:

*Step 1:* Get the grayscale image.

*Step 2:* Find the Fourier Transform of the image to get the waves in spatial frequency domain, the sum of which returns the original image. 

*Step 3:* Partition the waves into num_portion portions and visualize the result by finding the inverse fourier transform of waves in that portion and subsequently adding the portions on top. 



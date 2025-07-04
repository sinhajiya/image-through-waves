# Generating Images with waves

Creating images by a combination of different waves.


Inspired by: [Every picture is made of waves - Sixty Symbols](https://www.youtube.com/watch?v=mEN7DTdHbAU&t=306s)

### Concept:

Each image is made of combination of waves of different wavelength, frequency and amplitudes.
Here, I have implemented a matlab code to visualize the same. 

**Step 1:** Get the grayscale image.

**Step 2:** Find the Fourier Transform of the image to get the waves in spatial frequency domain, the sum of which returns the original image. 

**Step 3:** Partition the waves into num_portion portions and visualize the result by finding the inverse fourier transform of waves in that portion and subsequently adding the portions on top. 

### Result:
Sequence of image generated by addition of waves. 

**EXAMPLE 1:**
<table>
    <tr>
        <td>
            <h3>Example Image:</h3>
            <img src="https://github.com/user-attachments/assets/e460bf01-dec8-43a9-b795-ee106c8600c9" 
                 width="250" alt="Example Image">
        </td>
        <td>
            <h3>Implementation:</h3>
            <img src="https://github.com/user-attachments/assets/0964050e-1057-44a6-bf0d-98a2fa4c0960" 
                 width="250" alt="GIF Example">
        </td>
    </tr>
</table>

**EXAMPLE 2:**
<table>
    <tr>
        <td>
            <h3>Example Image:</h3>
            <img src="https://github.com/user-attachments/assets/377ec7a4-b07d-4975-9c56-8d41bdc390d0" 
                 width="250" alt="Example Image">
        </td>
        <td>
            <h3>Implementation:</h3>
            <img src="https://github.com/user-attachments/assets/99caeac8-e0c9-4bc4-95a9-345845466ca4" 
                 width="250" alt="GIF Example">
        </td>
    </tr>
</table>


**EXAMPLE 3:**
<table>
    <tr>
        <td>
            <h3>Example Image 3:</h3>
            <img src="https://github.com/user-attachments/assets/22ddf2a2-556e-4d7e-8c2f-60d6b47150eb" 
                 width="250" alt="Example Image">
        </td>
        <td>
            <h3>Implementation:</h3>
            <img src="https://github.com/user-attachments/assets/52788080-e835-40be-a125-f2af664c7865" 
                 width="250" alt="GIF Example">
        </td>
    </tr>
</table>

# PROGRAM TO CONVERT RECONSTRUCTED IMAGES TO A GIF

from PIL import Image

image_paths = [f'reconstructed_step_{i}.png' for i in range(1, 21)] 

images = [Image.open(img) for img in image_paths]


output_path = 'output_gif1.gif'
images[0].save(
    output_path, 
    save_all=True, 
    append_images=images[1:], 
    duration=350,  
    loop=0  
)

print(f"GIF saved as {output_path}")
# PROGRAM TO CONVERT RECONSTRUCTED IMAGES TO A GIF

from PIL import Image

image_paths = [f'reconstructed_step_{i}.png' for i in range(1, 21)] 
# Open all images and store them in a list
images = [Image.open(img) for img in image_paths]

# Save the images as a GIF
output_path = 'output_gif1.gif'
images[0].save(
    output_path, 
    save_all=True, 
    append_images=images[1:], 
    duration=350,  # Duration for each frame in milliseconds
    loop=0  # 0 means the GIF will loop infinitely
)

print(f"GIF saved as {output_path}")
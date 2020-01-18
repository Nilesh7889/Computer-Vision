# Robot-Finding-Ball

The task here is to help a robot to identify a bright orange ball in its surrounding.
The ball.bmp is an image obtained from a camera mounted on the robot.

Implemented a Myrgb2hsi function to convert red-green-blue (RGB) colors to hue-saturation-intensity (HSI).

function [H, S, I] = Myrgb2hsi(Im)

In the function Im is the original color image, and H, S, and I are the normalized hue value, saturation-value, and intensity value in the HSI color space, respectively. The H, S, and I here is in the range of [0, 1].

Implemented different edge detection techniques to find the edges of image ball.bmp using the Sobel, Prewitt, Roberts, Laplacian of Gaussian, and Canny methods on the Value (Intensity) image obtained from calling the function, which converts the RGB color images to HSV images. 

Displayed the edges obtained from these methods on figure 4 with the title for each subplot. 

Explained which methods gives you good results in general and also which edge detector will be appropriate for the specific application.

After that implemented the threshold for the ball in H-space and seperated it from the background.

In Final step executed the regionprops with centroid property to find the center of the ball and displayed it with the cross sign on the original color image.


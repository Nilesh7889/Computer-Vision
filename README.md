# Tracking objects from surrounding 
## The Project is to help a robot to identify a bright orange ball in its surrounding using camera.
The ball.bmp is an image obtained from a camera mounted on the robot.

![ball](https://user-images.githubusercontent.com/43874699/72658811-70d9a700-3984-11ea-8a9b-95d3ada7286e.jpg)

Implemented a Myrgb2hsi function to convert red-green-blue (RGB) colors to hue-saturation-intensity (HSI).

![3](https://user-images.githubusercontent.com/43874699/72658774-cb263800-3983-11ea-94cf-c63dbdab3f23.jpg)

### function [H, S, I] = Myrgb2hsi(Im)

In the function Im is the original color image, and H, S, and I are the normalized hue value, saturation-value, and intensity value in the HSI color space, respectively. The H, S, and I here is in the range of [0, 1].

![5](https://user-images.githubusercontent.com/43874699/72658788-fd379a00-3983-11ea-9cf6-72e4e1f5aec7.jpg)

Implemented different edge detection techniques to find the edges of image ball.bmp using the Sobel, Prewitt, Roberts, Laplacian of Gaussian, and Canny methods on the Value (Intensity) image obtained from calling the function, which converts the RGB color images to HSV images. 

Displayed the edges obtained from these methods on figure 4 with the title for each subplot. 

Explained which methods gives you good results in general and also which edge detector will be appropriate for the specific application.

![08](https://user-images.githubusercontent.com/43874699/72658835-aa121700-3984-11ea-8164-482c07f77681.jpg)

After that implemented the threshold for the ball in H-space and seperated it from the background.

![7](https://user-images.githubusercontent.com/43874699/72658846-cb730300-3984-11ea-93a3-442dabfdc5e0.jpg)

In Final step executed the regionprops with centroid property to find the center of the ball and displayed it with the cross sign on the original color image.


# Laplacianfilter
The Laplacian filter is an edge-sharpening filter, which sharpens the edges of the image in HLSL online Image proccessing with GPU
You can use these Code in C# project.
## Brief Description

The Laplacian is a 2-D isotropic measure of the 2nd spatial derivative of an image. 
The Laplacian of an image highlights regions of rapid intensity change and is therefore often used for edge detection (see zero crossing edge detectors).
The Laplacian is often applied to an image that has first been smoothed with something approximating a Gaussian smoothing filter in order to reduce its sensitivity to noise, and hence the two variants will be described together here. 
The operator normally takes a single graylevel image as input and produces another graylevel image as output.

## How It use in c# project

1.first build this code in shazam shader.
2.use output of your shazam shader in your project

## before use Laplacianfilter

![alt text](https://github.com/faragh47/Laplacianfilter/blob/master/before.png)

## after use Laplacianfilter

![alt text](https://github.com/faragh47/Laplacianfilter/blob/master/after.png)

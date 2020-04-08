sampler2D input : register(s0);
sampler2D scan : register(s1);

float intensity : register(c4);

sampler Image : register(S1);  
  
// The Laplace filter approximates the second order derivate,  
// that is, the rate of change of slope in the image. It can be  
// used for edge detection. The Laplace filter gives negative  
// response on the higher side of the edge and positive response  
// on the lower side.  
  
// This is the filter kernel:  
// 0 1 0  
// 1 -4 1  
// 0 1 0  
  
  
  
float4 main(float2 texCoord: TEXCOORD0,  
uniform float scale,  
uniform float pixelSize) : COLOR  
{  
  
float3 samples3[3] = {  
1, 1,0,  
1,0,-1,
0, -1,-1,
};  
float2 samples[4] = {  
0, -1,  
-1, 0,  
1, 0,  
0, 1  
};    
float4 laplace = -3 * tex2D(scan, texCoord);  
  
// Sample the neighbor pixels  
for (int i = 0; i < 3; i++){  
laplace += tex2D(scan, texCoord + 0.0031 * samples3[i]);  
}  
float4 color=tex2D(scan, texCoord);
color-=(0.0 + intensity * laplace);
  
return color;  
}  

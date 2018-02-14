x = 1;
y = 1;

SobelX = [-1,-2,-1;0,0,0;1,2,1];
SobelY = [-1,0,1;-2,0,2;-1,0,1];

img = readpbm('U1_surface.pbm');
[lon,lar] = size(img);

D = conv2(img,SobelX)
F = conv2(img,SobelY)

for x = 1:(lon-3)
    for y = 1:(lar-3)
        img(x,y)=sqrt(D(x,y)^2 + F(x,y)^2);
        
end
end

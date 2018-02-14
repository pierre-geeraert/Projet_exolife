x = 1;
y = 1;

SobelX = [-1,-2,-1;0,0,0;1,2,1];
SobelY = [-1,0,1;-2,0,2;-1,0,1];

img = readpbm('U2_surface.pbm');
[lon,lar] = size(img);

D = conv2(img,SobelX)
F = conv2(img,SobelY)

for x = 1:(lon-3)
    for y = 1:(lar-3)
        img(x,y)=sqrt(D(x,y)^2 + F(x,y)^2);
        if img(x,y) < 200 then img(x,y) = 0;
            end
        
end
end

x = 2
y = 2

for x = 2:1023
    
    for y = 2:575
        img(x,y) = median (img(x-1:x+1,y-1:y+1));
            
    end
    
end


x = 1
y = 1
img = readpbm('Jupiter1.pbm');


for x = 2:859
    
    for y = 2:459
        img(x,y) = median (img(x-1:x+1,y-1:y+1));
            
    end
    
end

x = 1;
y = 1;
img = readpbm('Mars_surface.pbm');
for y = 1:384

        for x = 1:512 
            img (x,y) = round(((img (x,y))/255) * 100);
    
        end

end

disp (min(img))
disp (max(img))

disp (round(mean(img)))

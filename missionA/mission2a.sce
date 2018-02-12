// Define the axes of the picture
x = 1;
y = 1;

// Set the picture into a matrice named "img"
img = readpbm('Mars_surface.pbm');

// Scroll every pixels of the picture
for y = 1:384

        for x = 1:512 
        
        // For every pixel, define a percentage of the shade of gray
            img (x,y) = round(((img (x,y))/255) * 100);
    
        end

end

// Display the minimal and maximal percentage
disp (min(img))
disp (max(img))

// Display the mean of the shades
disp (round(mean(img)))

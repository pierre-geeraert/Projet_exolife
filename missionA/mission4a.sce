// Define the axes of the picture
x = 1
y = 1

// Set the picture into a matrice named "img"
img = readpbm('Jupiter1.pbm');

// Scroll every pixels of the picture since the 2nd column to prior to last column, and since 2nd lign to prior to last lign
for x = 2:859
    
    for y = 2:459
    
    // For every pixels, define the value to a median of the eight pixels around of him
        img(x,y) = median (img(x-1:x+1,y-1:y+1));
            
    end
    
end

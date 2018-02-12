// Define the axes of the pictures
x = 1;
y = 1;

// Set the picture into a matrice named "img"
img = readpbm('Gliese 667Cc_surface.pbm');

// Scroll every pixels of the picture
for y = 1:384

    for x = 1:512
    
    // Increase the value of the pixel depending on his initial value
        if img(x,y) <= 10 then img(x,y) = img(x, y) * 3;
        else if img (x,y) <= 20 then img(x,y) = img(x,y) * 6;
                else img(x,y) = img(x,y) * 9;
    
    // Set the maximal value to 255
       if img(x,y)>255 then img(x,y) = 255;
end
end
end
end
end

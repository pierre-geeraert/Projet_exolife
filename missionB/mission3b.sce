// Define the axes of the pictures
x = 1;
y = 1;

// Set the picture into a matrice named "img"
img = readpbm('HD215497.pbm');

// Scroll every pixels of the picture
for x = 1:512
    for y = 1:384
        
        // Define several intervals for every area of the picture
       if img(x,y) <= 64 then img(x,y) = 0;
       else if img(x,y) <= 128 then img(x,y) = 100;
           else if img(x,y) <= 192 then img(x,y) = 200;
               else img(x,y) = 255;

       end
   end
end
end
end


// Apply a median filter
x = 2;
y = 2;

for x = 2:511
    for y = 2:383
        img(x,y) =  median (img(x-1:x+1,y-1:y+1));
    end
end

x = 1;
y = 1;

img = readpbm('Gliese 667Cc_surface.pbm');

for y = 1:384

    for x = 1:512
        if img(x,y) <= 10 then img(x,y) = img(x, y) * 3;
        else if img (x,y) <= 20 then img(x,y) = img(x,y) * 6;
                else img(x,y) = img(x,y) * 9;
             
       if img(x,y)>255 then img(x,y) = 255;
end
end
end
end
end

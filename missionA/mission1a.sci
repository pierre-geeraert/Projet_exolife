//exec('readpbm.sci')
img = readpbm('Encelade_surface.pbm');
//gray = display_gray(img);
max_gray=max(img);

//216
colonne=512;
ligne=384;


for i=1:ligne
    for j=1:colonne
        
        if img(j,i) > 200
            
            img(j,i)=255;
            
        else 
            img(j,i)=0;
            
        end

   
    end
 
end
//disp(array)

exec('readpbm.sci')
exec('display_gray.sci')
img = readpbm('Europa_surface.pbm');
//gray = display_gray(img);
max_gray=max(img);
disp(max_gray);
//216
colonne=512;
ligne=384;
//si point le plus blanc  if img(j,i) > 200
//si point le plus noir  if img(j,i) < 50

for i=1:ligne
    for j=1:colonne
        
        if img(j,i) > 253
            
            img(j,i)=255;
            
        else 
            img(j,i)=0;
            
        end

   
    end
 
end



//-img = readpbm('Encelade_surface.pbm');
//gray = display_gray(img);
//-min_gray=min(img);
colonne=512;
ligne=384;
nbr_ligne=1;
nbr_colonne=1;
array=[]
n=1;
for nbr_ligne=1:ligne
    for nbr_colonne=1:colonne
        array(n, 1)=nbr_colonne;
        array(n, 2)=nbr_ligne;
       n=n+1;
   
    end
 
end
 disp(array)

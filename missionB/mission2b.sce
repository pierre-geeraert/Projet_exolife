x = 1;
y = 1;
getd("../")
'../readpbm.sci'
'../display_gray.sci'

img = readpbm('GD61.pbm');



maxI=max(img);
minI=min(img);

img2=[];
table=[];
//maxI = 200;
//minI = 2;

for i = 0:255
    
    table(i+1) = 255*(i-minI)/(maxI-minI);

end


for i = 1:384

    for j = 1:512
        img2(j,i) = table(img(j,i)+1);    
    end
end

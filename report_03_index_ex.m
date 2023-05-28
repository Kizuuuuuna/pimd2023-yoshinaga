info1980=imfinfo("bearGlacier1980.png");
type1980=info1980.ColorType
info2011=imfinfo("bearGlacier2011.png");
type2011=info2011.ColorType
%%info_pepper = imfinfo("pepper_test.png");

figure(1)
[glacier1980,map1980]=imread("bearGlacier1980.png");
imshow(glacier1980,map1980);
title("Bear Glacier in 1980")

figure(2)
[glacier2011,map2011]=imread("bearGlacier2011.png");
imshow(glacier2011,map2011);
title("Bear Glacier in 2011")

gs1980 = ind2gray(glacier1980,map1980);
gs2011 = ind2gray(glacier2011,map2011);
imshowpair(gs1980,gs2011,"montage")
title("Bear Glacier Comparation - 1980-2011")

figure(3)
rgb1980 = ind2rgb(glacier1980,map1980);
imshow(rgb1980)

figure(4)
rgb2011 = ind2rgb(glacier2011,map2011);
imshow(rgb2011)

figure(5)
[ind2011 map] = rgb2ind(rgb2011,2);
imshow(ind2011,map)

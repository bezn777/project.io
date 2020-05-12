function output = blur(img,w)
[r c] = size(img);
img = uint8(img);
img2 = nan(size(img) + (2*w));
img2(w+1:end-w,w+1:end-w) = img;
output = 0*img;
for i=w+1:r+w
  for j=w+1:c+w
    img3=img2(i-w:i+w,j-w:j+w);
    output(i-w,j-w)=mean(img3(~isnan(img3)));
  end
end
output=uint8(output);
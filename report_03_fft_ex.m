I=imread('cameraman.tif');
figure(1)
DP = fftshift(fft2(I));
imagesc(abs(DP))
axis image
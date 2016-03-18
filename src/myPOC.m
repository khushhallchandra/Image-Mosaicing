function [output,inverse]=myPOC(img1,img2)
	[in1,in2]=size(img1);   
	%Take FFT of the input images
	f=fft(img1);        
	g=fft(img2);          
	%Calculate the F*G/mod(F*G)
	b=f.*conj(g);           
	mod=abs(b);                   
	w=mod+~logical(mod);
	m=b./(w);
	%Take invere FFT and find the peak
	inverse=abs(fftshift(ifft(m)));
	output=max(inverse);
	x=floor(in1/2)+1;
	% y=floor(in2/2)+1;
	% %Return the displacement of the peak from the central pixel
	% [index1,index2]=find(inverse==output);
	% index1=index1-x;
	% index2=index2-y;
end


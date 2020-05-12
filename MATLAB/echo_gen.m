function output = echo_gen(input,fs,delay,amp)
samp = round(fs*delay) ;
d_sig = floor(samp);
sig = zeros(length(input)+d_sig,1);
sig(1:length(input))=input;
echo_sig =zeros(length(input)+d_sig,1);
echo_sig(d_sig+(1:length(input*amp)))=input*amp;
output= sig + echo_sig;
s= max(abs(output));
if s>1
output=output ./ s;
else
output = output;
end
end
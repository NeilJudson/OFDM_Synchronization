function selfCorr = SelfCorr(seq, winWidth, delay)
%SELFCORR Self-correlation function
%   SelfCorr(A, B, C) returns the self-correlation result of A and B.
%   seq: The sequence.
%   winWidth: The width of the self-correlation window.
%   delay: Self-correlation delay.

%   Authors: Neil Judson
%   Copyright 2016 Neil Judson
%   $Revision: 1.1 $  $Date: 2016/07/08 15:30:00 $

%% check input
errMsg = '';
seqLength = length(seq);
if(seqLength < winWidth), errMsg = 'Input error: seqLeng is shorter than winWidth.'; end
seqLengMinusDelay = seqLength - delay;
if(seqLengMinusDelay < winWidth), errMsg = 'Input error: seqLeng-delay is shorter than winWidth.'; end
if ~isempty(errMsg), error('JiaWeiwei:InputCheck',errMsg); end

%%
seqDelay = seq;
seq = [seqDelay(delay+1:end) zeros(1,delay)];
seqMult = seq .* conj(seqDelay);
selfCorrLength = seqLengMinusDelay - winWidth + 1;
selfCorr = zeros(1,selfCorrLength);
% winWidthMinusOne = winWidth-1;
for k = 1:1:selfCorrLength
    selfCorr(k) = sum(seqMult(k:k+winWidth-1));
end
% figure('name','自相关绝对值'); plot(abs(selfCorr));

end


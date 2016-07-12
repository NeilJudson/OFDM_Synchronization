function crossCorr = CrossCorr(shortSeq, longSeq)
%CROSSCORR Cross-correlation function
%   CrossCorr(A, B) returns the cross-correlation result of A and B.

%   Authors: Neil Judson
%   Copyright 2016 Neil Judson
%   $Revision: 1 $  $Date: 2016/06/29 20:00:00 $

%% check input
errMsg = '';
shortSeqLength = length(shortSeq);
longSeqLength = length(longSeq);
if(shortSeqLength > longSeqLength), errMsg = 'Input error: shortSeq is longer than longSeq.'; end
if ~isempty(errMsg), error('JiaWeiwei:InputCheck',errMsg); end

%%
crossCorrLength = longSeqLength - shortSeqLength + 1;
crossCorr = zeros(1,crossCorrLength);
% shortSeqLengthMinusOne = shortSeqLength - 1;
for n = 1:1:crossCorrLength
    crossCorr(n) = sum(shortSeq .* conj(longSeq(n:n+shortSeqLength-1)));
%     crossCorr(n) = sum(shortSeq .* conj(longSeq(n:n+shortSeqLengthMinusOne)));
end
% figure('name','互相关绝对值'); plot(abs(crossCorr));

end


function [CPStartPoint,FCO] = MCOFDMSyn(data, NFFT, SNRdB)
%MLOFDMSYN MC estimation of time and frequency offset in OFDM systems
%   Detailed explanation goes here

%   Authors: Neil Judson
%   Copyright 2016 Neil Judson
%   $Revision: 1.1 $  $Date: 2016/07/29 13:40:00 $

%% 时延
dataDelay = data;
data = [dataDelay(NFFT+1:end) zeros(1,NFFT)];

%% 自相关、能量
selfMult = dataDelay .* conj(data);
% selfMultLength = length(selfMult);
selfMultLength = 500;
gamma = zeros(1,selfMultLength-31);
for n = 1:1:selfMultLength-31
    gamma(n) = sum(selfMult(n:n+31));
end

target = abs(gamma);
CPStartPoint = find(target(1:400)==max(target(1:400)));
CPStartPoint = CPStartPoint(1); % CP起始位置

%% 小数频偏估计
FCO = -atan(imag(gamma(CPStartPoint))/real(gamma(CPStartPoint))) / 2 / pi;

end
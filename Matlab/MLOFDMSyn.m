function [CPStartPoint FCO] = MLOFDMSyn(data, NFFT, SNRdB)
%MLOFDMSYN ML estimation of time and frequency offset in OFDM systems
%   Detailed explanation goes here
%   Van De Beek J J, Sandell M, Borjesson P O.
%   ML estimation of time and frequency offset in OFDM systems[J].
%   IEEE Transactions on Signal Processing, 1997, 45(7): 1800-1805

%   Authors: Jia Weiwei
%   Copyright 2016 Jia Weiwei
%   $Revision: 1.2 $  $Date: 2016/07/27 10:30:00 $

%% 时延
dataDelay = data;
data = [dataDelay(NFFT+1:end) zeros(1,NFFT)];

%% 自相关、能量
selfMult = dataDelay .* conj(data);
dataDelayPwr = dataDelay .* conj(dataDelay);
dataPwr = data .* conj(data);
% selfMultLength = length(selfMult);
selfMultLength = 500;
gamma = zeros(1,selfMultLength-31);
phi = zeros(1,selfMultLength-31);
for n = 1:1:selfMultLength-31
    gamma(n) = sum(selfMult(n:n+31));
    phi(n) = sum(dataDelayPwr(n:n+31)+dataPwr(n:n+31)) / 2;
end

%% 时间同步
SNR = 10 ^ (SNRdB/10);
rou = SNR / (SNR+1);
gammaAbs = abs(gamma);
target = gammaAbs - rou*phi;
CPStartPoint = find(target(1:400)==max(target(1:400)));
CPStartPoint = CPStartPoint(1); % CP起始位置
%{
figure; plot(gammaAbs); grid on; title('gammaAbs');
figure; plot(phi); grid on; title('phi');
figure; plot(target); grid on; title('target');
%}

%% 小数频偏估计
FCO = -atan(imag(gamma(CPStartPoint))/real(gamma(CPStartPoint))) / 2 / pi;

end

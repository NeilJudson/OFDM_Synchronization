function [synAddr FCO] = MLSyn(data, SNRdB)
%MLSYN ML estimation of time and frequency offset in OFDM systems
%   Detailed explanation goes here
%   ML estimation of time and frequency offset in OFDM systems[J]

%   Authors: Jia Weiwei
%   Copyright 2016 Jia Weiwei
%   $Revision: 1.1 $  $Date: 2016/07/25 15:30:00 $

%% 时延
delay = 256;
dataDelay = data;
data = [dataDelay(delay+1:end) zeros(1,delay)];

%% 自相关、能量
selfCorr = dataDelay.*conj(data);
dataDelayPwr = dataDelay.*conj(dataDelay);
dataPwr = data.*conj(data);
% selfCorrLength = length(selfCorr);
selfCorrLength = 500;
gamma = zeros(1,selfCorrLength-31);
phi = zeros(1,selfCorrLength-31);
for n = 1:1:selfCorrLength-31
	gamma(n) = sum(selfCorr(n:n+31));
    phi(n) = sum(dataDelayPwr(n:n+31)+dataPwr(n:n+31))/2;
end

%% 时间同步
SNR = 10^(SNRdB/10);
rou = SNR/(SNR+1);
gammaAbs = abs(gamma);
target = gammaAbs-rou*phi;

%{
figure; plot(gammaAbs); grid on; title('gammaAbs');
figure; plot(phi); grid on; title('phi');
figure; plot(target); grid on; title('target');
%}

synAddr = find(target(1:400)==max(target(1:400)));
synAddr = synAddr(1);

%% 小数频偏估计
FCO = -atan(imag(gamma(synAddr))/real(gamma(synAddr)))/2/pi;

end

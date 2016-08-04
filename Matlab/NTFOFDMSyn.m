function [CPStartPoint chanLength FCO] = NTFOFDMSyn(data, NFFT, SNRdB)
%NTFOFDMSYN NTF estimation of time and frequency offset in OFDM systems
%   Detailed explanation goes here

%   Authors: Neil Judson
%   Copyright 2016 Neil Judson
%   $Revision: 1.1 $  $Date: 2016/08/04 09:30:00 $

%% 时延
dataDelay = data;
data = [dataDelay(NFFT+1:end) zeros(1,NFFT)];

%% 自相关、能量
selfMult = dataDelay .* conj(data);
selfMultTempLength = 544;
selfMultTemp = zeros(10,selfMultTempLength);
index = 1:288:(10*288+1);
for i = 0:1:9
    selfMultTemp(i+1,:) = selfMult((1+i*288):(selfMultTempLength+i*288));
end
selfMultExep = sum(selfMultTemp,1)/10;

dataDelayPwr = dataDelay .* conj(dataDelay);
dataPwr = [dataDelayPwr(NFFT+1:end) zeros(1,NFFT)];
dataPwrAverage = (dataDelayPwr+dataPwr) / 2;
dataPwrAverageTemp = zeros(10,selfMultTempLength);
for i = 0:1:9
    dataPwrAverageTemp(i+1,:) = dataPwrAverage((1+i*288):(selfMultTempLength+i*288));
end
dataPwrAverageExep = sum(dataPwrAverageTemp,1)/10;

% gammaLength = selfMultTempLength - 32;
gammaLength = 400;
L = 15;
gamma = zeros(L,gammaLength);
phi = zeros(L,gammaLength);
for m = 0:1:L
    for n = 1:1:gammaLength
        gamma(m+1,n) = sum(selfMultExep(n:n+31-m));
        phi(m+1,n) = sum(dataPwrAverageExep(n:n+31-m));
    end
end

%% 时间同步
SNR = 10^(SNRdB/10);
rou = (SNR/(SNR+1))^2;
gammaAbs = abs(gamma);
target = gammaAbs - rou*phi;
index = find(target(:,1:400)==max(max(target(:,1:400))));
index = index(1);
[chanLength CPStartPoint] = ind2sub([L+1,gammaLength],index);
chanLength = chanLength - 1;
%{
range = 1:1:400;
figure; surf(gammaAbs(:,range)); grid on; title('gammaAbs');
figure; surf(phi(:,range)); grid on; title('phi');
figure; surf(target(:,range)); grid on; title('target');
%}

%% 小数频偏估计
FCO = -atan(imag(gamma(1,CPStartPoint))/real(gamma(1,CPStartPoint))) / 2 / pi;

end

function [CPStartPoint FCO] = Wang4OFDMSyn(data, NFFT, SNRdB)
%WangOFDMSYN
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
M = 4;
selfMultTemp = zeros(M,selfMultTempLength);
for i = 0:1:M-1
    selfMultTemp(i+1,:) = selfMult((1+i*288):(selfMultTempLength+i*288));
end
selfMultExep = sum(selfMultTemp,1)/M;

dataDelayPwr = dataDelay .* conj(dataDelay);
dataPwr = [dataDelayPwr(NFFT+1:end) zeros(1,NFFT)];
dataPwrAverage = (dataDelayPwr+dataPwr) / 2;
dataPwrAverageTemp = zeros(M,selfMultTempLength);
for i = 0:1:M-1
    dataPwrAverageTemp(i+1,:) = dataPwrAverage((1+i*288):(selfMultTempLength+i*288));
end
dataPwrAverageExep = sum(dataPwrAverageTemp,1)/M;

% gammaLength = selfMultTempLength - 32;
gammaLength = 400;
L = 0;
gamma = zeros(L+1,gammaLength);
phi = zeros(L+1,gammaLength);
for m = 0:1:L
    for n = 1:1:gammaLength
        gamma(m+1,n) = sum(selfMultExep(n:n+7-m));
        phi(m+1,n) = sum(dataPwrAverageExep(n:n+7-m));
    end
end
L2 = 31;
gamma2 = zeros(L2+1,gammaLength);
phi2 = zeros(L2+1,gammaLength);
for m = 0:1:L2
    for n = 1:1:gammaLength
        gamma2(m+1,n) = sum(selfMultExep(n:n+m));
        phi2(m+1,n) = sum(dataPwrAverageExep(n:n+m));
    end
end

%% 时间同步
SNR = 10^(SNRdB/10);
rou = (SNR/(SNR+1));
gammaAbs = abs(gamma);
target = gammaAbs - rou*phi;
index = find(target(:,1:gammaLength)==max(max(target(:,1:gammaLength))));
index = index(1);
[chanLength nmax] = ind2sub([L+1,gammaLength],index);

rou = (SNR/(SNR+1))^2;
gammaAbs2 = abs(gamma2);
target2 = gammaAbs2 - rou*phi2;
index = find(target2(:,nmax:gammaLength)==max(max(target2(:,nmax:gammaLength))));
index = index(1);
[kmax temp] = ind2sub([L2+1,gammaLength-nmax+1],index);
kmax = kmax - 1;
CPStartPoint = kmax+nmax-32+1;
%{
range = 1:1:400;
figure; surf(gammaAbs(:,range)); grid on; title('gammaAbs');
figure; surf(phi(:,range)); grid on; title('phi');
figure; surf(target(:,range)); grid on; title('target');
%}

%% 小数频偏估计
FCO = -atan(imag(gamma(1,CPStartPoint))/real(gamma(1,CPStartPoint))) / 2 / pi

end

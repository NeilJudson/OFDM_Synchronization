allZC32Sequences= zeros(32,32,32);
for m = 1:1:32
    for shift = 1:1:32
        allZC32Sequences(shift,:,m) = ZC(32,m,shift-1);
    end
end
save('allZC32Sequences');
function [OUT] = DecompressRLL(IN)
    N = length(IN);
    OUT = [];        
    i = 1;   
    while i <= N
        count = IN(i);
        if count >= 192
            count = count - 192;
            i = i + 1;         
        else
            count = 1;        
        end
        value = IN(i);
        OUT = [OUT, repmat(value, 1, count)]; 
        i = i + 1;
    end
end
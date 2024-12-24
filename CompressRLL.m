function [OUT] = CompressRLL(IN)

N=length(IN);
A=IN(1);
count=1;
j=1;
    for i=2:N,
        if ((IN(i)==A) && (count<64)),
            count=count+1;
        else
            if((count>1) ||(A>=192)),
                OUT(j)=count+192;
                j=j+1;
            end
            OUT(j)=A;
            j=j+1;
            A=IN(i);
            count=1;
        end
    end
    if((count>1) ||(A>=192)),
        OUT(j)=count+192;
        j=j+1;
    end
    OUT(j)=A;
end
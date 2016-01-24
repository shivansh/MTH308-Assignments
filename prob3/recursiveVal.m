function val = recursiveVal(j, k, mem)
if k == 0
    val = sin(1 + j*pi/6);
else
    if mem(j, k-1) ~= 0
        mem(j, k-1) = recursiveVal(j, k-1, mem);
    end
    if mem(j+1, k-1) ~= 0
        mem(j+1, k-1) = recursiveVal(j+1, k-1, mem);
    end
    val = mem(j, k-1) + mem(j+1, k-1);
end
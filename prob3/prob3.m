% flag = 0;
% for j = 0:5
%     for k = 0:5
%         if evalRec(j, k + 1) != evalRec(j, k) - evalRec(j + 1, k)
%             flag = 1;
%             break;
%         end
%     end
% end
% if flag == 1
%     fprintf("Inequality attained at %d %d\n", j, k);
% else
%     printf("Equal\n");
% end

x = 1;
evalRec = @(j, k) sin(x + (j - k)*(pi/3));
compute_eK = @(k) abs(evalRec(1, 0) - evalRec(1, k));

x = (1:0.1:60);
y = compute_eK(x);
plot(x, y)

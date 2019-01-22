declare
fun {Sum1 N}
  if N==0 then 0 else N+{Sum1 N-1} end
end
fun {Sum2 N S}
  if N==0 then S else {Sum2 N-1 N+S} end
end

% (a)
% local Sum1 in
%   Sum1=proc {$ N ?Z}
%     if N==0 then
%       Z=0
%     else A in
%       A={Sum1 N-1}
%       Z=N+A
%   end
% end

% local Sum2 in
%   Sum2=proc {$ N S ?Z}
%     if N==0 then
%       Z=S
%     else A in
%       A={Sum2 N-1 N+S}
%       Z=A
%     end
%   end
% end

% (b)

% (c)
{Browse {Sum1 100000000}}
% {Sum2 100000000 0}

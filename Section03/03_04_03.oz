declare
% proc {ExprCode E C1 ?Cn S1 ?Sn}
%   case E
%   of plus(A B) then C2 C3 S2 S3 in
%     C2=plus|C1
%     S2=S1+1
%     {ExprCode B C2 C3 S2 S3}
%     {ExprCode A C3 Cn S3 Sn}
%   [] I then
%     Cn=push(I)|C1
%     Sn=S1+1
%   end
% end

% declare Code Size in
% {ExprCode plus(plus(a 3) b) nil Code 0 Size}
% {Browse Size#Code}


fun {Merge Xs Ys}
  case Xs # Ys
  of nil # Ys then Ys
  [] Xs # nil then Xs
  [] (X|Xr) # (Y|Yr) then
    if X<Y then
      X|{Merge Xr Ys}
    else
      Y|{Merge Xs Yr}
    end
  end
end


% # はタプル構成演算子
fun {MergeSort Xs}
  fun {MergeSortAcc L1 N}
    if N==0 then
      nil # L1
    elseif N==1 then
      [L1.1] # L1.2
    elseif N>1 then
      NL=N div 2
      NR=N-NL
      Ys # L2 = {MergeSortAcc L1 NL}
      Zs # L3 = {MergeSortAcc L2 NR}
    in
      {Merge Ys Zs} # L3
    end
  end
in
  {MergeSortAcc Xs {Length Xs}}.1
end

{MergeSort [5 4 3 2 1]}

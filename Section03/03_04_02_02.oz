fun {Nth Xs N}
  if N==1 then Xs.1
  elseif N>1
    {Nth Xs.2 N-1}
  end
end

fun {SumList Xs}
  case Xs
  of nil then 0
  [] X|Xr then X + {SumList Xr}
end

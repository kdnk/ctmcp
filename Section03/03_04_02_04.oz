fun {Length Xs}
  case Xs
  of nil then 0
  [] _|Xr then 1 + {Length Xr}
  end
end

fun {IterLength I Ys}
  case Ys
  of nil then I
  [] _|Xr then {IterLength I+1 Xr}
  end
end


% 初期値Y_sが0であることは自明なので、以下のようにできる

local
  fun {IterLength I Ys}
    case Ys
    of nil then I
    [] _|Yr then {IterLength I+1 Yr}
  end
in
  fun {Length Xs}
    {IterLength 0 Xs}
  end
end

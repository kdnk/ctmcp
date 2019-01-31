declare
fun {LengthL Xs}
  case Xs
  of nil then 0
  [] X|Xr andthen {IsList X} then
    {LengthL X} + {LengthL Xr}
  [] X|Xr then
    1+{LengthL Xr}
  end
end

fun {IsCons X}
  case X of _|_ then true
  else false
  end
end

fun {IsList X}
  X==nil orelse {IsCons X}
end

X=[[1 2] 4 nil [[5] 10]]
{Browse {LengthL X}}
% {Browse {LengthL [X X]}}


fun {LengthL2 Xs}
  case Xs
  of nil then 0
  [] X|Xr then 1+{LengthL2 Xr}
  else 1
  end
end

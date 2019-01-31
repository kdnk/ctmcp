declare
fun {AppendD D1 D2}
  S1#E1=D1 % (a|b|c|X)#X
  S2#E2=D2 % (d|e|f|Y)#Y
in
  E1=S2
  S1#E2
end

local X Y in
  {Browse {AppendD (1|2|3|X)#X (4|5|Y)#Y}}
end


fun {Append L1 L2}
  case L1
  of X|T then X|{Append T L2}
  [] nil then L2
  end
end

fun {Flatten Xs}
  case Xs
  of nil then nil
  [] X|Xr andthen {IsList X} then
    {Append {Flatten X} {Flatten Xr}}
  [] X|Xr then
    X|{Flatten Xr}
  end
end

{Browse {Flatten [[a b] [[c] [d]] nil [e [f]]]}}

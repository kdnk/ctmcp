fun {Append Ls Ms}
  case Ls
  of nil then Ms
  [] X|Xr then X|{Append Xr Ms}
end

fun {Reverse Xs}
  case Xs
  of nil then nil
  [] X|Xr then {Append {Reverse Xr} [X]}
end

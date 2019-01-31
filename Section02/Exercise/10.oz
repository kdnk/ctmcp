fun {Smerge Xs Ys}
  case Xs#Ys
  of nil#Ys then Ys
  [] Xs#nil then Xs
  [] (X|Xr)#(Y|Yr) then
    if X=<Y then X|{SMerge Xr Ys}
    else Y|{SMerge Xs Yr} end
  end
end}

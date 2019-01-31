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

proc {Split Xs ?Ys ?Zs}
  case Xs
  of nil then Ys=nil Zs=nil
  [] [X] then Ys=[X] Zs=nil
  [] X1|X2|Xr then Yr Zr in
    Ys=X1|Yr
    Zs=X2|Zr
    {Split Xr Yr Zr}
  end
end

fun {MergeSort Xs}
  case Xs
  of nil then nil
  [] [X] then [X]
  else Ys Zs then
    {Split Xs Ys Zs}
    {Merge {MergeSort Ys} {MergeSort Zs}}
  end
end

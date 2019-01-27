local
  fun {IterReverse Rs Ys}
    case Ys
    of nil then Rs
    [] Y|Yr then {IterReverse Y|Rs, Yr}
    end
  end
in
  fun {Reverse Xs}
    {IterReverse nil Xs}
  end
end

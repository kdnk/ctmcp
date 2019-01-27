declare
fun {Fact N}
  fun {FactIter N A}
    if N==0 then A
    elseif N>0 then {FactIter N-1 A*N}
    end
  end
in
    {FactIter N 1}
end

{Browse {Fact 5}}

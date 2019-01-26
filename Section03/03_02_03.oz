declare
fun {Sqrt X}
  Guess=1.0
in
  {Browse {SqrtIter Guess X}}
end

fun {SqrtIter Guess X}
  if {GoodEnough Guess X} then
    Guess
  else
    {SqrtIter {Improve Guess X} X}
  end
end

fun {Improve Guess X}
  % calculate g'
  (Guess + X/Guess) / 2.0
end

fun {GoodEnough Guess X}
  {Abs X - Guess*Guess}/x < 0.00001
end

fun {Abs X}
  if X < 0.0 then ~X else X end
end

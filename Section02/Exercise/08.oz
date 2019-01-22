% (a)
declare
fun {AndThen BP1 BP2}
  if {BP1} then {BP2} else false end
end
{Browse {AndThen  fun {$} true end fun {$} 'Hello' end}}

fun {Test EX1 EX2}
  EX1 andthen EX2 % == if EX1 then EX2 else false end
end
{Browse {Test true 'Hello'}}


% (b)

fun {OrElse BP1 BP2}
  if {BP1} then true else {BP2} end
end
{Browse {OrElse fun {$} false end fun {$} 'Hello' end}}

fun {Test2 EX1 EX2}
  EX1 orelse EX2
end
{Browse {Test2 false 'Hello'}}

/* 1.15 nondeterminism and time */

declare
C={NewCell 0}
thread
   C:=1
end
thread
   C:=2
end
{Browse @C}


declare
C={NewCell 0}
thread I in
   I=@C
   C:=I+1
end
thread J in
   J=@C
   C:=J+1
end

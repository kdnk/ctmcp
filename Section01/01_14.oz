/* 1.14 class */

declare
fun {NewCounter}
C Bump Read in
   C={NewCell 0}
   fun {Bump}
      C:=@C+1
      @C
   end
   fun {Read}
      @C
   end
   counter(bump:Bump read:Read)
end

declare
Ctrl1={NewCounter}
Ctrl2={NewCounter}

{Browse {Ctrl1.bump}} /* => 1 */

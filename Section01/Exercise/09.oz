/* S={NewStore} */
/* {Put S 2 [22 33]} */
/* {Browse {Get S 2}} */
/* {Browse {Size S}} */

/* 1.18 9(a) */
/* 問題の意味がわからん */

/* 1.18 9(b) */
declare
fun {ShiftLeft L}
   case L of
      H|T then H|{ShiftLeft T}
      else [0]
      end
end

fun {ShiftRight L}
   0|L
end

fun {AddList L1 L2}
case L1 of
   H1|T1 then
      case L2 of
         H2|T2 then H1+H2|{AddList T1 T2}
      end
   else nil end
end

local S in
   S={NewStore}
   {Put S 1 [1]}
   fun {FasterPascal N}
      if {Size S}<N then
         local L in
            L={FasterPascal N-1}
            {Put S N {AddList {ShiftLeft L} {ShiftRight L}}}
         end
      else
         {Get S N}
      end
   end
end

/* 1.18 9(c) */
declare

fun {NewStore}
   S={NewCell 0|nil}
   @S
end

fun {Size S}
   case S
      of 0|nil then 0
      [] H1|T1 then 1+{Size T1}
   end
end

fun {Get S N}
   case S
   of 0|nil then nil
   [] H1|T1 then
      if H1.1==N then
         H1.2
      else
         {Get T1 N}
      end
   end
end

fun {Put S N T}
   (N|T)|S
end

S={NewStore}
{Put S 2 [22 33]}
{Browse {Get S 2}}
{Browse {Size S}}

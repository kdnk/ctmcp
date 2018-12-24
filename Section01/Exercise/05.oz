/* 1.18 5 */

declare
fun lazy {Ints N}
   N|{Ints N+1}
end

fun {SumList L}
   case L of X|L1
      then
         {Browse X}
         X+{SumList L1}
      else 0 end
end

{Browse 'Hello'}
{Browse {SumList {Ints 0}}}


% 表示されない気がする... → 途中の Browse は表示された

functor
import
   System
   Application
   ShiftLeft at './01_05.ozf'
   ShiftRight at './01_05.ozf'
   AddList at './01_05.ozf'
define
   /* 1.8 lazy evaluation */

   fun lazy {Ints N}
      N|{Ints N+1}
   end

   L = {Ints 0}
   {System.showInfo L.1}
   case L of A|B|C|_ then {System.showInfo A+B+C} end

   /* lazy pascal */
   fun lazy {PascalList Row}
      Row|{PascalList {AddList {ShiftLeft Row} {ShiftRight Row}}}
   end
   L = {PascalList [1]}
   /* {Browse L.1} => [1] */
   /* {Browse L.2.1} => [1 1]*/

   {Application.exit 0}
end

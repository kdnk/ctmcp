functor
import
   System
   Application
   ShiftLeft at './01_05.ozf'
   ShiftRight at './01_05.ozf'
   AddList at './01_05.ozf'
define
   /* 1.7 computational complexity */

   fun {FastPascal N}
      {System.showInfo N}
      if N==1 then [1]
      else L in
         /* FastPascal は階づつしか呼ばれなくなる */
         L={FastPascal N-1}
         {AddList {ShiftLeft L} {ShiftRight L}}
      end
   end

   {System.showInfo {List.toTuple '#' {FastPascal 10}}}

   {Application.exit 0}
end

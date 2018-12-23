/* See https://github.com/Altech/ctmcp-answers/blob/master/Section01/exer02.oz */
/* See https://github.com/draftcode/ctmcp-answers/blob/master/Section1/prob2.oz */

functor
import
   System
   Application
define
   fun {Numerator N K I}
      if K==0 then 1
      else
         if I<K then
            (N-I) * {Numerator N K I+1}
         else
            1
         end
      end
   end

   fun {Denominator K}
      if K==0 then 1 else
         K * {Denominator K-1}
      end
   end

   fun {Comb N K}
      if K==0 then 1
      else
         /* N={Numerator N K} */
         /* D={Denominator K} */
         /* {System.showInfo N} */
         /* {System.showInfo D} */
         /* N div D */
         {System.showInfo {Numerator N K 0}} /* => 720 */
         {System.showInfo {Denominator K}} /* => 6 */
         {Numerator N K 0} div {Denominator K} /* => 120 */
      end
   end

   {System.showInfo {Comb 10 3}}
   {Application.exit 0}
end


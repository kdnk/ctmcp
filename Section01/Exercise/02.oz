/* See https://github.com/Altech/ctmcp-answers/blob/master/Section01/exer02.oz */
/* See https://github.com/draftcode/ctmcp-answers/blob/master/Section1/prob2.oz */

functor
import
   System
   Application
define
   /* (a) */
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

   fun {FastComb N K}
      if K==0 then 1
      else
         /* N={Numerator N K} */
         /* D={Denominator K} */
         /* {System.showInfo N} */
         /* {System.showInfo D} */
         /* N div D */
         /* {System.showInfo {Numerator N K 0}} /1* => 720 *1/ */
         /* {System.showInfo {Denominator K}} /1* => 6 *1/ */
         {Numerator N K 0} div {Denominator K} /* => 120 */
      end
   end
   {System.showInfo {FastComb 10 3}}


   /* (b) */
   fun {FasterComb N K}
      if K > N div 2 then
         {FastComb N N-K}
      else
         {FastComb N K}
      end
   end
   {System.showInfo {FasterComb 10 3}}

   {Application.exit 0}
end


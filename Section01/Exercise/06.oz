functor
import
   System
   Application
define
   fun {ShiftLeft L}
      case L of
         H|T then H|{ShiftLeft T}
         else [0]
         end
   end

   fun {ShiftRight L}
      0|L
   end

   /* 1.18 6(a) */
   fun {GenericPascal Op N}
      if N==1 then [1]
      else L in
         L = {GenericPascal Op N-1}
         {OpList Op {ShiftLeft L} {ShiftRight L}}
      end
   end

   fun {OpList Op L1 L2}
      case L1 of H1|T1 then
         case L2 of H2|T2 then
            {Op H1 H2}|{OpList Op T1 T2}
         end
      else
         nil
      end
   end

   fun {Add X Y}
      X+Y
   end

   fun {Subtract X Y}
      X-Y
   end

   fun {Multiple X Y}
      X*Y
   end

   fun {Mull X Y}
      (X+1)*(Y+1)
   end

   {System.show {GenericPascal Add 10}}
   {System.show {GenericPascal Subtract 10}}
   {System.show {GenericPascal Multiple 10}} /* 一番最初の行で AddList したときに、[0 1 0] になるので、0*1 == 0, 1*0 == 0 で、以降は全部 0 */
   {System.show {GenericPascal Mull 10}} /* めちゃでかくなる */

   {Application.exit 0}
end

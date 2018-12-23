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

   /* 1.9 Higher-order programming */
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

   fun {FastPascal N}
      {GenericPascal Add N}
   end

   fun {Xor X Y}
      if X==Y then 0 else 1 end
   end

   {System.showInfo 'hello'}
   {System.showInfo {List.toTuple '#' {GenericPascal Add 5}}}
   {System.showInfo {List.toTuple '#' {GenericPascal Add 5}}}
   {System.showInfo {List.toTuple '#' {FastPascal 5}}}
   {System.showInfo {List.toTuple '#' {GenericPascal Xor 5}}}

   {Application.exit 0}
end


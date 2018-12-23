functor
import
   System
   Application
define
   /* 1.5 function about list */
   fun {Pascal N}
      {System.showInfo N}
      if N==1 then [1]
      else
         {AddList {ShiftLeft {Pascal N-1}} {ShiftRight {Pascal N-1}}}
      end
   end

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

   {System.showInfo {List.toTuple '#' {Pascal 10}}}

   {Application.exit 0}
end

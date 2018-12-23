functor
import
   System
   Application
define
   /* 1.4 list */
   {System.showInfo {List.toTuple '#' [5 6 7 8]} }

   H = 5
   T = [6 7 8]
   {System.showInfo {List.toTuple '#' H|T}  }

   L=[5 6 7 8]
   {System.showInfo L.1}
   {System.showInfo {List.toTuple '#' L.2}}

   case L of
      H|T then
         {System.showInfo H}
         {System.showInfo {List.toTuple '#' T}}
   end

   {Application.exit 0}
end

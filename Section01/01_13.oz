functor
import
   System
   Application
define
   /* 1.13 object */
   local C in
      C={NewCell 0}
      fun {Bump}
         C:=@C+1
      end
      fun {Read}
         @C
      end
   end

   {System.showInfo {Bump}} /* => 0 */
   {System.showInfo {Bump}} /* => 1 */

   {Application.exit 0}
end


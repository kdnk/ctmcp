functor
import
   System
   Application
define
   /* 1.12 explicit state */
   C={NewCell 0}
   C:=@C+1
   {System.showInfo @C}

   {Application.exit 0}
end


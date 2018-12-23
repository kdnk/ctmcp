functor
import
   System
   Application
   Pascal at './01_05.ozf'
define
   /* 1.10 concurrency */
   thread P in
      P = {Pascal 30}
      {System.showInfo P}
   end

   {System.showInfo 99*99}

   {Application.exit 0}
end



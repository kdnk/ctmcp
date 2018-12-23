functor
import
   System
   Application
define
   /* 1.3 function */
   fun {Fact N}
   if N==0 then 1 else N * {Fact N - 1} end
   end
   {System.showInfo {Fact 100}}

   fun {Comb N K}
      {Fact N} div ({Fact K}*{Fact N-K})
   end

   {System.showInfo {Comb 10 3} }

   {Application.exit 0}
end

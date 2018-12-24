functor
import
   System
   Application
define
   /* 1.18 8 */

   fun {Accumulate N}
      Acc in
         Acc={NewCell 0} % ここで毎回新しい Acc を生成しているのがいけない。
         Acc:=@Acc+N
         @Acc
   end


   local Acc in
      Acc={NewCell 0}
      fun {FixedAccumulate N}
         Acc:= @Acc+N
         @Acc
      end
   end

   {System.show {Accumulate 5}}
   {System.show {Accumulate 100}}
   {System.show {Accumulate 45}}

   {System.show {FixedAccumulate 5}}
   {System.show {FixedAccumulate 100}}
   {System.show {FixedAccumulate 45}}

   {Application.exit 0}
end

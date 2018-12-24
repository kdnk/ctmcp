functor
import
   System
   Application
define
   /* 1.18 7 */
   local X in
      X=23
      local X in
         X=44
      end
      {System.show X} % => 23 が表示される。44を代入しているのは違うスコープ
   end

   local X in
      X={NewCell 23}
      X:=44
      {System.show @X} % => 44
   end

   {Application.exit 0}
end


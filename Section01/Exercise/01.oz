/* See https://github.com/Altech/ctmcp-answers/blob/master/Section01/exer01.oz */

functor
import
   System
   Application
define
   V1 = 2
   V2 = V1 * V1
   V4 = V2 * V2
   V8 = V4 * V4
   V16 = V8 * V8
   V32 = V16 * V16
   V64 = V32 * V32
   V100 = V64 * V32 * V4 /* => 1267650600228229401496703205376 */

   {System.showInfo V100}
   {Application.exit 0}
end


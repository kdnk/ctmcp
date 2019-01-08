local X in
   X=1
   local X in
      X=2
      {Browse X}
   end
   {Browse X}
end

local Max C in
   proc {Max X Y ?Z}
      if X>=Y then Z=X else Z=Y end
   end
   {Max 3 5 C}
   {Browse C}
end
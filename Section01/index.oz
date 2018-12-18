declare
V = 9999*9999
{Browse V*V}

declare
fun {Fact N}
   if N==0 then 1 else N * {Fact N - 1} end
end

{Browse {Fact 100}}

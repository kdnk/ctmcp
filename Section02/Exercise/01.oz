proc {P X}
  if X>0 then { P X-1 } end
end

% 核言語に書き直すと
local P in
  P = Proc { $ X }
    local T in
      T=X>0
      if T then {P X-1} end
    end
  end
end

% ので2つ目の出現は束縛

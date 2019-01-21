% (a) case 文を使って if 文を定義

% if <x> then <s>1 else <s>2 end

% case <x>
% of true then <s>1
% [] false then <s>2
% end



% (b) if文ともろもろの諸操作を使って、case 文を定義せよ。

% case <x>
% of <lit>(<feat>1: <x>1, ..., <feat>n: <x>n) then <s>1
% else <s>2
% end

% ↑わかりにくいけど
% person(age: 25, name: 'Nakamura')
% みたいなもん

if {Lit <x>} == <lit> then
  if {Arity <x>} === {<feat>1, <feat>2, ..., <feat>n} then
    local <x>1, <x>2, ..., <x>n in
      <s>1
    end
  else <s>2
  end
else <s>2
end

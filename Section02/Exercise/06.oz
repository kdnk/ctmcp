declare Test
proc {Test X}
  case X of f(a Y c) then {Browse 'case'(1)}
  else {Browse 'case'(2)} end
end

declare X Y
{Test f(X b Y)} % => 1。ちがった。何も表示されない。b=Y && Y=cとなるからだめ？両立しない。

declare X Y
{Test f(a Y d)} % => 2
{Browse f(a Y d) == f(a Y c)} % => false

declare X Y
{Test f(X Y d)} % => 2。ちがった。何も表示されない。

declare X Y
if f(X Y d)==f(a Y c) then {Browse 'case'(1)}
else {Browse 'case'(2)} end

declare
proc {Test X}
  case X
  of a|Z then {Browse 'case'(1)}
  [] f(a) then {Browse 'case'(2)}
  [] Y|Z andthen Y==Z then {Browse 'case'(3)}
  [] Y|Z then {Browse 'case'(4)}
  [] f(Y) then {Browse 'case'(5)}
  else {Browse 'case'(6)} end
end

{Test [b c a]} % => 4
{Test f(b(3))} % => 5
{Test f(a)} % => 2
{Test f(a(3))} % => 5
{Test f(d)} % => 5
{Test [a b c]} % => 1
{Test [c a b]} % => 4
{Test a|a} % => 1
{Test '|'(a b c)} % => `|` はcons演算子。実行したら6だった。なんでかわからん。1になってほしい。


declare
proc {Test2 X}
  case X of '|'(a Z) then {Browse 'case'(1)}
  else
    case X of f(a) then {Browse 'case'(2)}
    else
      case X of '|'(Y Z) then
        if Y==Z then {Browse 'case'(3)}
        else {Browse 'case'(4)}
        end
      else
        case X of f(Y) then {Browse 'case'(5)}
        else
          {Browse 'case'(6)}
        end
      end
    end
  end
end

{Test2 [b c a]} % => 4
{Test2 f(b(3))} % => 5
{Test2 f(a)} % => 2
{Test2 f(a(3))} % => 5
{Test2 f(d)} % => 5
{Test2 [a b c]} % => 1
{Test2 [c a b]} % => 4
{Test2 a|a} % => 1
{Test2 '|'(a b c)} % => `|` はcons演算子。実行したら6だった。なんでかわからん。

% Q: 関数だと例外が発生する。なぜか。
% A: 「関数の本体の終わりが式でなければならないこと」が関係ある気がしている
%    けどnilがかえるとしてもこれも式？ →　それはrubyの世界
%    「proc は 最初に?Rを定義しているけど、関数は、存在しない else に入ってしまった場合、存在しない変数を返すことになる」が正しい気がする

% Q: この状況は手続きでは起きない。なぜ起きないか。
% A: L17以降をみても明らかに例外は発生しない。
%    未束縛な変数が残るだけ。



declare
fun {ReturnFalse T}
  if T then true end
end
{Browse {ReturnFalse true}} % => true
{Browse {ReturnFalse false}} % => Missing else clause


proc {ReturnFalse2 T ?A}
  if T then A=T end
end
local X Y in
  {ReturnFalse2 true X}
  {ReturnFalse2 false Y}
  {Browse X} % => true
  {Browse Y} % => _(未束縛な変数への束縛)
end

% declare MulByN N in
% N=3
% proc {MulByN X ?Y}
%   Y=N*X
% end

% 呼び出し時の環境に{A → 10, B → x_1}が含まれているとする => {MulByN 10, x_1}
% 手続き本体が実行されると、写像N → 3 がその環境に追加される

% Q: なぜこのステップが必要なのか
% A: Nが宙ぶらりん参照(dangling reference)になる可能性があるから

% Q: 環境内のどこかにN→3の参照があるとしたら?
% A: 呼び出しの度に結果が変わる可能性がある


% Q: これが、識別子Nが3に写像することを保証するのに十分でないとしたら?
% A: 日本語の意味がわからん...

% 呼び出し時の環境内にNが存在しない例を挙げよ
local A=10 B in
  local MulByN in
    local N=3 in
      proc {MulByN X ?Y}
        Y=N*X
      end
    end
    {MulByN A B}
    {Browse B} %=> 30
    {Browse N} % => Variable N not introduced
  end
end



% Nは存在するが、3以外の値に束縛されている例を挙げよ
local A=10 B in
  local MulByN in
    local N=3 in
      proc {MulByN X ?Y}
        Y=N*X
      end
    end
    local N=10 in
      {MulByN A B}
      {Browse B} % => 30
      {Browse N} % => 10
    end
  end
end

declare Max3 Max5
proc {SpecialMax Value ?SMax}
  fun {SMax X}
    if X>Value then X else Value end
  end
end
{SpecialMax 3 Max3} %=> 3より大きいものはそのまま返す関数
{SpecialMax 5 Max5} %=> 5             ""

% {Max3 4} == 4
% {Max5 4} == 5 だから
{Browse [{Max3 4} {Max5 4}]} % => [4 5]

/* N==0 のとき */
/* {Pascal 0} == [1] で正しい値を返す */
/* N==N-1 のとき */
/* {Pascal N-1} が正しいと仮定する */
/* また、AddList, ShiftLeft, ShiftRight の各操作が正しいと仮定する(数学的帰納法で示せる)。 */
/* このとき、{Pascal N} は [0, ...{Pascal N-1}] と [...{Pascal N-1}, 0] との各要素の和として計算できる。 */
/* {AddList {ShiftLeft {Pascal N-1}} {ShiftRight {Pascal N-1}}} という定義と、 */
/* {Pascal N-1}, AddList, ShiftLeft, ShiftRightが正しいという仮定から */
/* {Pascal N} も正しい答えを返す。 */

/* 1.11 dataflow */
declare X in
thread {Delay 5000} X=99 end
{Browse start} {Browse X*X}

declare X in
thread {Browse start} {Browse X*X} end
{Delay 5000} X=99

{Application.exit 0}



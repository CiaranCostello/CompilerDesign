.names 3
.proc Main
.proc SumUp
.var 1 i
SumUp: Enter 1
Const 0
Sto 0 0
L$0: Nop
LoadG 3
Const 0
Gtr
FJmp L$1
Load 0 0
LoadG 3
Add
Sto 0 0
LoadG 3
Const 1
Sub
StoG 3
Jmp L$0
L$1: Nop
Load 0 0
Write
Leave
Ret
Main: Enter 0
Read
StoG 3
L$2: Nop
LoadG 3
Const 0
Gtr
FJmp L$3
Call 1 SumUp
Read
StoG 3
Jmp L$2
L$3: Nop
Leave
Ret

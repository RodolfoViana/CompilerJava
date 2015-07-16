		; ModuleID = 'entrada6.txt.ll'

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-s0:0:64-f80:32:32"
target triple = "i686-pc-linux-gnu"

		; Global values
@.str0 = internal constant [2 x i8]  c"a\00"
%struct.Test = type { i32 }

		; External declarations
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)

		; method_header
define void @Test_outroMetodo(%struct.Test* %this, i32 %num1, i32 %num2) {
entry:
	%num1_addr = alloca i32
	store i32 %num1, i32* %num1_addr
	%num2_addr = alloca i32
	store i32 %num2, i32* %num2_addr
		; M3
	%i = alloca i32
	%j = alloca i32
	br label %label_0
label_0:	; l_Begin
		; relational_LT_expression
	%tmp0 = load i32* %j
	%tmp1 = load i32* %i
	%tmp2 = icmp slt i32 %tmp0, %tmp1
	br i1 %tmp2, label %label_1, label %label_2
label_1:	; l_True
		; method_declaration
	br label %return
return:
	ret void
}



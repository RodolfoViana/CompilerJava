		; ModuleID = '/home/leonardo/Desktop/CompilerJava/entrada.txt.ll'

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-s0:0:64-f80:32:32"
target triple = "i686-pc-linux-gnu"

		; Global values
%struct.Test = type {  }

		; External declarations
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)

		; method_header
define void @main() {
entry:
		; relational_GT_expression
	%tmp0 = icmp sgt i32 2, 2
	br i1 %tmp0, label %label_1, label %label_2
label_1:	; l_True
		; M2
	%i = alloca i32
	br label %label_2
label_2:	; l_False
		; method_declaration
	br label %return
return:
	ret void
}



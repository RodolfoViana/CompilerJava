		; ModuleID = 'entrada.txt.ll'

target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-s0:0:64-f80:32:32"
target triple = "i686-pc-linux-gnu"

		; Global values
%struct.Test = type { i32 }

		; External declarations
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8*, ...)

		; method_header
define i32 @Test_outroMetodo(%struct.Test* %this, i32 %num1, i32 %num2) {
entry:
	%num1_addr = alloca i32
	store i32 %num1, i32* %num1_addr
	%num2_addr = alloca i32
	store i32 %num2, i32* %num2_addr
	%retval = alloca i32
	%tmp = alloca i32
		; return_statement
	%tmp0 = load i32* %num1_addr
	store i32 %tmp0, i32* %tmp
	%tmp1 = load i32* %tmp
	store i32 %tmp1, i32* %retval
	br label %return
		; method_declaration
	br label %return
return:
	%tmp2 = load i32* %retval
	ret i32 %tmp2
}

		; method_header
define void @Test_abc(%struct.Test* %this) {
entry:
		; M3
	%j = alloca i32
	%a = alloca i1
		; assignment
	store i32 4, i32* %j
		; equality_NOTEQ_expression
	%tmp3 = load i32* %j
	%tmp4 = icmp ne i32 %tmp3, 3
	br i1 %tmp4, label %label_9, label %label_10
		; assignment
label_9:	; l_True
	br label %label_11
label_10:	; l_False
	br label %label_11
label_11:	; l_Next
	%tmp5 = phi i1 [true, %label_9] ,[false, %label_10]
	store i1 %tmp5, i1* %a
	br label %label_12
label_12:	; l_Begin
	br label %label_13
label_13:	; l_True
		; M2
	%c = alloca i32
	br label %label_12
label_14:	; l_False
		; assignment
	store i32 1, i32* %j
	br label %label_20
label_20:	; l_Begin
		; relational_LT_expression
	%tmp6 = load i32* %j
	%tmp7 = icmp slt i32 %tmp6, 4
	br i1 %tmp7, label %label_21, label %label_22
label_21:	; l_True
		; M2
	%ku = alloca i32
		; method_invocation
	%tmp8 = getelementptr %struct.Test* %this, i32 0, i32 0
	%tmp9 = load i32* %tmp8
	%tmp10 = getelementptr %struct.Test* %this, i32 0, i32 0
	%tmp11 = load i32* %tmp10
	%tmp12 = call i32 @Test_outroMetodo(%struct.Test* %this, i32 %tmp9, i32 %tmp11)
		; method_declaration
	br label %return
return:
	ret void
}

		; method_header
define i8 @Test_outroMetodo2(%struct.Test* %this, i32 %num1) {
entry:
	%num1_addr = alloca i32
	store i32 %num1, i32* %num1_addr
	%retval = alloca i8
	%tmp = alloca i8
		; return_statement
	store i8 a, i8* %tmp
	%tmp13 = load i8* %tmp
	store i8 %tmp13, i8* %retval
	br label %return
		; method_declaration
	br label %return
return:
	%tmp14 = load i8* %retval
	ret i8 %tmp14
}

		; method_header
define void @Test_testaOperadoresRelacionais(%struct.Test* %this) {
entry:
		; M3
	%j = alloca i1
	%i = alloca i32
		; relational_GT_expression
	%tmp15 = icmp sgt i32 4, 5
	br i1 %tmp15, label %label_29, label %label_30
		; assignment
label_29:	; l_True
	br label %label_31
label_30:	; l_False
	br label %label_31
label_31:	; l_Next
	%tmp16 = phi i1 [true, %label_29] ,[false, %label_30]
	store i1 %tmp16, i1* %j
		; equality_EQEQ_expression
	%tmp17 = icmp eq i32 5, 5
	br i1 %tmp17, label %label_33, label %label_34
		; assignment
label_33:	; l_True
	br label %label_35
label_34:	; l_False
	br label %label_35
label_35:	; l_Next
	%tmp18 = phi i1 [true, %label_33] ,[false, %label_34]
	store i1 %tmp18, i1* %j
		; relational_GTEQ_expression
	%tmp19 = icmp sge i32 6, 5
	br i1 %tmp19, label %label_37, label %label_38
		; assignment
label_37:	; l_True
	br label %label_39
label_38:	; l_False
	br label %label_39
label_39:	; l_Next
	%tmp20 = phi i1 [true, %label_37] ,[false, %label_38]
	store i1 %tmp20, i1* %j
		; relational_LTEQ_expression
	%tmp21 = icmp sle i32 6, 5
	br i1 %tmp21, label %label_41, label %label_42
		; assignment
label_41:	; l_True
	br label %label_43
label_42:	; l_False
	br label %label_43
label_43:	; l_Next
	%tmp22 = phi i1 [true, %label_41] ,[false, %label_42]
	store i1 %tmp22, i1* %j
		; relational_LT_expression
	%tmp23 = icmp slt i32 4, 5
	br i1 %tmp23, label %label_45, label %label_46
		; assignment
label_45:	; l_True
	br label %label_47
label_46:	; l_False
	br label %label_47
label_47:	; l_Next
	%tmp24 = phi i1 [true, %label_45] ,[false, %label_46]
	store i1 %tmp24, i1* %j
		; assignment
	store i32 0, i32* %i
		; assignment
	store i32 1, i32* %i
	br label %label_56
label_56:	; l_Begin
		; relational_LT_expression
	%tmp25 = load i32* %i
	%tmp26 = icmp slt i32 %tmp25, 4
	br i1 %tmp26, label %label_57, label %label_58
label_57:	; l_True
		; M2
	%ku = alloca i32
		; assignment
	store i32 1, i32* %i
	br label %label_64
label_64:	; l_Begin
		; additive_PLUS_expression
	%tmp27 = add i32 3, 1
		; additive_PLUS_expression
	%tmp28 = add i32 4, 1
		; relational_LT_expression
	%tmp29 = icmp slt i32 %tmp27, %tmp28
	br i1 %tmp29, label %label_65, label %label_66
label_65:	; l_True
		; M2
	%ku = alloca i32
		; method_declaration
	br label %return
return:
	ret void
}



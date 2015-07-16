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
define void @Test_testaChamadaDeMetodo(%struct.Test* %this) {
entry:
		; method_invocation
	%tmp3 = getelementptr %struct.Test* %this, i32 0, i32 0
	%tmp4 = load i32* %tmp3
	%tmp5 = getelementptr %struct.Test* %this, i32 0, i32 0
	%tmp6 = load i32* %tmp5
	%tmp7 = call i32 @Test_outroMetodo(%struct.Test* %this, i32 %tmp4, i32 %tmp6)
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
	%tmp8 = load i8* %tmp
	store i8 %tmp8, i8* %retval
	br label %return
		; method_declaration
	br label %return
return:
	%tmp9 = load i8* %retval
	ret i8 %tmp9
}

		; method_header
define void @Test_testaOperadoresRelacionais(%struct.Test* %this) {
entry:
		; M3
	%j = alloca i1
	%i = alloca i32
		; relational_GT_expression
	%tmp10 = icmp sgt i32 4, 5
	br i1 %tmp10, label %label_9, label %label_10
		; assignment
label_9:	; l_True
	br label %label_11
label_10:	; l_False
	br label %label_11
label_11:	; l_Next
	%tmp11 = phi i1 [true, %label_9] ,[false, %label_10]
	store i1 %tmp11, i1* %j
		; equality_EQEQ_expression
	%tmp12 = icmp eq i32 5, 5
	br i1 %tmp12, label %label_13, label %label_14
		; assignment
label_13:	; l_True
	br label %label_15
label_14:	; l_False
	br label %label_15
label_15:	; l_Next
	%tmp13 = phi i1 [true, %label_13] ,[false, %label_14]
	store i1 %tmp13, i1* %j
		; relational_GTEQ_expression
	%tmp14 = icmp sge i32 6, 5
	br i1 %tmp14, label %label_17, label %label_18
		; assignment
label_17:	; l_True
	br label %label_19
label_18:	; l_False
	br label %label_19
label_19:	; l_Next
	%tmp15 = phi i1 [true, %label_17] ,[false, %label_18]
	store i1 %tmp15, i1* %j
		; relational_LTEQ_expression
	%tmp16 = icmp sle i32 6, 5
	br i1 %tmp16, label %label_21, label %label_22
		; assignment
label_21:	; l_True
	br label %label_23
label_22:	; l_False
	br label %label_23
label_23:	; l_Next
	%tmp17 = phi i1 [true, %label_21] ,[false, %label_22]
	store i1 %tmp17, i1* %j
		; relational_LT_expression
	%tmp18 = icmp slt i32 4, 5
	br i1 %tmp18, label %label_25, label %label_26
		; assignment
label_25:	; l_True
	br label %label_27
label_26:	; l_False
	br label %label_27
label_27:	; l_Next
	%tmp19 = phi i1 [true, %label_25] ,[false, %label_26]
	store i1 %tmp19, i1* %j
		; assignment
	store i32 0, i32* %i
		; method_declaration
	br label %return
return:
	ret void
}

		; method_header
define void @Test_testaFor(%struct.Test* %this) {
entry:
		; M3
	%x = alloca i32
	%j = alloca i32
	%bool = alloca i1
	br label %label_32
label_32:	; l_Begin
		; relational_LT_expression
	%tmp20 = load i32* %x
	%tmp21 = icmp slt i32 %tmp20, 4
	br i1 %tmp21, label %label_33, label %label_34
label_33:	; l_True
		; M2
	%ku = alloca i32
	br label %label_36
label_36:	; l_Begin
		; relational_LT_expression
	%tmp22 = load i32* %j
	%tmp23 = icmp slt i32 %tmp22, 4
	br i1 %tmp23, label %label_37, label %label_38
label_37:	; l_True
		; M2
	%ku = alloca i32
	br label %label_40
label_40:	; l_Begin
		; relational_LT_expression
	%tmp24 = load i32* %j
	%tmp25 = icmp slt i32 %tmp24, 4
	br i1 %tmp25, label %label_41, label %label_42
label_41:	; l_True
		; M2
	%ku = alloca i32
		; assignment
	store i32 1, i32* %j
	br label %label_48
label_48:	; l_Begin
		; relational_LT_expression
	%tmp26 = load i32* %j
	%tmp27 = icmp slt i32 %tmp26, 4
	br i1 %tmp27, label %label_49, label %label_50
label_49:	; l_True
		; M2
	%ku = alloca i32
		; assignment
	store i32 1, i32* %j
	br label %label_56
label_56:	; l_Begin
		; relational_LT_expression
	%tmp28 = load i32* %j
	%tmp29 = icmp slt i32 %tmp28, 4
	br i1 %tmp29, label %label_57, label %label_58
label_57:	; l_True
		; M2
	%ku = alloca i32
		; assignment
label_61:	; l_True
	br label %label_63
label_62:	; l_False
	br label %label_63
label_63:	; l_Next
	%tmp30 = phi i1 [true, %label_61] ,[false, %label_62]
	store i1 %tmp30, i1* %bool
		; assignment
	store i32 1, i32* %j
	br label %label_68
label_68:	; l_Begin
	br i1 %bool, label %label_69, label %label_70
label_69:	; l_True
		; M2
	%ku = alloca i32
		; assignment
	store i32 1, i32* %j
	br label %label_76
label_76:	; l_Begin
	br i1 %bool, label %label_77, label %label_78
label_77:	; l_True
		; relational_GT_expression
	%tmp31 = icmp sgt i32 3, 5
	br i1 %tmp31, label %label_81, label %label_82
label_81:	; l_True
		; additive_PLUS_expression
	%tmp32 = load i32* %j
	%tmp33 = add i32 %tmp32, 1
		; assignment
	store i32 %tmp33, i32* %j
	br label %label_83
label_82:	; l_False
		; additive_PLUS_expression
	%tmp34 = load i32* %j
	%tmp35 = add i32 %tmp34, 2
		; assignment
	store i32 %tmp35, i32* %j
	br label %label_83
label_83:	; l_Next
		; method_declaration
	br label %return
return:
	ret void
}

		; method_header
define void @Test_testaWhile(%struct.Test* %this) {
entry:
	br label %label_92
label_92:	; l_Begin
	br label %label_93
label_93:	; l_True
		; M2
	%c = alloca i32
	br label %label_92
label_94:	; l_False
		; method_declaration
	br label %return
return:
	ret void
}

		; method_header
define void @Test_testaTipoVariavel(%struct.Test* %this) {
entry:
		; M3
	%a = alloca i32
	br label %label_96
label_96:	; l_Begin
	br label %label_97
label_97:	; l_True
		; M2
	%c = alloca i32
	br label %label_96
label_98:	; l_False
		; method_declaration
	br label %return
return:
	ret void
}



; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_put"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }

$_ZSt3hexRSt8ios_base = comdat any

$_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_ = comdat any

$_ZStcoSt13_Ios_Fmtflags = comdat any

$_ZStaNRSt13_Ios_FmtflagsS_ = comdat any

$_ZStanSt13_Ios_FmtflagsS_ = comdat any

$_ZStoRRSt13_Ios_FmtflagsS_ = comdat any

$_ZStorSt13_Ios_FmtflagsS_ = comdat any

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_bad.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@_ZSt3cin = external dso_local global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [54 x i8] c"data value is too large to perform arithmetic safely.\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_bad.cpp() #0 section ".text.startup" !dbg !953 {
  call void @__cxx_global_var_init(), !dbg !956
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !957 {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !958
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3, !dbg !958
  ret void, !dbg !958
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z16printHexCharLinec(i8 signext %0) #4 !dbg !959 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !962, metadata !DIExpression()), !dbg !963
  %3 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::ios_base"* (%"class.std::ios_base"*)* @_ZSt3hexRSt8ios_base), !dbg !964
  %4 = load i8, i8* %2, align 1, !dbg !965
  %5 = sext i8 %4 to i32, !dbg !965
  %6 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %3, i32 %5), !dbg !966
  %7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %6, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !967
  ret void, !dbg !968
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local dereferenceable(216) %"class.std::ios_base"* @_ZSt3hexRSt8ios_base(%"class.std::ios_base"* dereferenceable(216) %0) #4 comdat !dbg !969 {
  %2 = alloca %"class.std::ios_base"*, align 8
  store %"class.std::ios_base"* %0, %"class.std::ios_base"** %2, align 8
  call void @llvm.dbg.declare(metadata %"class.std::ios_base"** %2, metadata !973, metadata !DIExpression()), !dbg !974
  %3 = load %"class.std::ios_base"*, %"class.std::ios_base"** %2, align 8, !dbg !975
  %4 = call i32 @_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_(%"class.std::ios_base"* %3, i32 8, i32 74), !dbg !976
  %5 = load %"class.std::ios_base"*, %"class.std::ios_base"** %2, align 8, !dbg !977
  ret %"class.std::ios_base"* %5, !dbg !978
}

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"*, %"class.std::ios_base"* (%"class.std::ios_base"*)*) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32 @_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_(%"class.std::ios_base"* %0, i32 %1, i32 %2) #4 comdat align 2 !dbg !979 {
  %4 = alloca %"class.std::ios_base"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %"class.std::ios_base"* %0, %"class.std::ios_base"** %4, align 8
  call void @llvm.dbg.declare(metadata %"class.std::ios_base"** %4, metadata !985, metadata !DIExpression()), !dbg !987
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !988, metadata !DIExpression()), !dbg !989
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !990, metadata !DIExpression()), !dbg !991
  %8 = load %"class.std::ios_base"*, %"class.std::ios_base"** %4, align 8
  call void @llvm.dbg.declare(metadata i32* %7, metadata !992, metadata !DIExpression()), !dbg !993
  %9 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %8, i32 0, i32 3, !dbg !994
  %10 = load i32, i32* %9, align 8, !dbg !994
  store i32 %10, i32* %7, align 4, !dbg !993
  %11 = load i32, i32* %6, align 4, !dbg !995
  %12 = call i32 @_ZStcoSt13_Ios_Fmtflags(i32 %11), !dbg !996
  %13 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %8, i32 0, i32 3, !dbg !997
  %14 = call dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* dereferenceable(4) %13, i32 %12), !dbg !998
  %15 = load i32, i32* %5, align 4, !dbg !999
  %16 = load i32, i32* %6, align 4, !dbg !1000
  %17 = call i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %15, i32 %16), !dbg !1001
  %18 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %8, i32 0, i32 3, !dbg !1002
  %19 = call dereferenceable(4) i32* @_ZStoRRSt13_Ios_FmtflagsS_(i32* dereferenceable(4) %18, i32 %17), !dbg !1003
  %20 = load i32, i32* %7, align 4, !dbg !1004
  ret i32 %20, !dbg !1005
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZStcoSt13_Ios_Fmtflags(i32 %0) #6 comdat !dbg !1006 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1009, metadata !DIExpression()), !dbg !1010
  %3 = load i32, i32* %2, align 4, !dbg !1011
  %4 = xor i32 %3, -1, !dbg !1012
  ret i32 %4, !dbg !1013
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* dereferenceable(4) %0, i32 %1) #4 comdat !dbg !1014 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !1020, metadata !DIExpression()), !dbg !1021
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1022, metadata !DIExpression()), !dbg !1023
  %5 = load i32*, i32** %3, align 8, !dbg !1024
  %6 = load i32, i32* %5, align 4, !dbg !1024
  %7 = load i32, i32* %4, align 4, !dbg !1025
  %8 = call i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %6, i32 %7), !dbg !1026
  %9 = load i32*, i32** %3, align 8, !dbg !1027
  store i32 %8, i32* %9, align 4, !dbg !1028
  ret i32* %9, !dbg !1029
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %0, i32 %1) #6 comdat !dbg !1030 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1033, metadata !DIExpression()), !dbg !1034
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1035, metadata !DIExpression()), !dbg !1036
  %5 = load i32, i32* %3, align 4, !dbg !1037
  %6 = load i32, i32* %4, align 4, !dbg !1038
  %7 = and i32 %5, %6, !dbg !1039
  ret i32 %7, !dbg !1040
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZStoRRSt13_Ios_FmtflagsS_(i32* dereferenceable(4) %0, i32 %1) #4 comdat !dbg !1041 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  call void @llvm.dbg.declare(metadata i32** %3, metadata !1042, metadata !DIExpression()), !dbg !1043
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1044, metadata !DIExpression()), !dbg !1045
  %5 = load i32*, i32** %3, align 8, !dbg !1046
  %6 = load i32, i32* %5, align 4, !dbg !1046
  %7 = load i32, i32* %4, align 4, !dbg !1047
  %8 = call i32 @_ZStorSt13_Ios_FmtflagsS_(i32 %6, i32 %7), !dbg !1048
  %9 = load i32*, i32** %3, align 8, !dbg !1049
  store i32 %8, i32* %9, align 4, !dbg !1050
  ret i32* %9, !dbg !1051
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_ZStorSt13_Ios_FmtflagsS_(i32 %0, i32 %1) #6 comdat !dbg !1052 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1053, metadata !DIExpression()), !dbg !1054
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1055, metadata !DIExpression()), !dbg !1056
  %5 = load i32, i32* %3, align 4, !dbg !1057
  %6 = load i32, i32* %4, align 4, !dbg !1058
  %7 = or i32 %5, %6, !dbg !1059
  ret i32 %7, !dbg !1060
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z7goodG2Bv() #4 !dbg !1061 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !1062, metadata !DIExpression()), !dbg !1063
  store i8 32, i8* %1, align 1, !dbg !1064
  store i8 2, i8* %1, align 1, !dbg !1065
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1066, metadata !DIExpression()), !dbg !1068
  %3 = load i8, i8* %1, align 1, !dbg !1069
  %4 = sext i8 %3 to i32, !dbg !1069
  %5 = add nsw i32 %4, 1, !dbg !1070
  %6 = trunc i32 %5 to i8, !dbg !1069
  store i8 %6, i8* %2, align 1, !dbg !1068
  %7 = load i8, i8* %2, align 1, !dbg !1071
  call void @_Z16printHexCharLinec(i8 signext %7), !dbg !1072
  ret void, !dbg !1073
}

; Function Attrs: noinline optnone uwtable
define dso_local void @_Z7goodB2Gv() #4 !dbg !1074 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %1, metadata !1075, metadata !DIExpression()), !dbg !1076
  store i8 32, i8* %1, align 1, !dbg !1077
  %3 = call dereferenceable(280) %"class.std::basic_istream"* @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(%"class.std::basic_istream"* dereferenceable(280) @_ZSt3cin, i8* dereferenceable(1) %1), !dbg !1078
  %4 = load i8, i8* %1, align 1, !dbg !1079
  %5 = sext i8 %4 to i32, !dbg !1079
  %6 = icmp slt i32 %5, 127, !dbg !1081
  br i1 %6, label %7, label %13, !dbg !1082

7:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1083, metadata !DIExpression()), !dbg !1085
  %8 = load i8, i8* %1, align 1, !dbg !1086
  %9 = sext i8 %8 to i32, !dbg !1086
  %10 = add nsw i32 %9, 1, !dbg !1087
  %11 = trunc i32 %10 to i8, !dbg !1086
  store i8 %11, i8* %2, align 1, !dbg !1085
  %12 = load i8, i8* %2, align 1, !dbg !1088
  call void @_Z16printHexCharLinec(i8 signext %12), !dbg !1089
  br label %16, !dbg !1090

13:                                               ; preds = %0
  %14 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0)), !dbg !1091
  %15 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %14, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1093
  br label %16

16:                                               ; preds = %13, %7
  ret void, !dbg !1094
}

declare dso_local dereferenceable(280) %"class.std::basic_istream"* @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(%"class.std::basic_istream"* dereferenceable(280), i8* dereferenceable(1)) #1

declare dso_local dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #7 !dbg !1095 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)), !dbg !1096
  %3 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %2, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1097
  call void @_Z7goodG2Bv(), !dbg !1098
  call void @_Z7goodB2Gv(), !dbg !1099
  %4 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)), !dbg !1100
  %5 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %4, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !1101
  ret i32 0, !dbg !1102
}

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!28}
!llvm.ident = !{!949}
!llvm.module.flags = !{!950, !951, !952}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/iostream", directory: "")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 608, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !7, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, flags: DIFlagFwdDecl)
!7 = !{!8, !12, !14, !18, !19, !24}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !4, file: !5, line: 621, baseType: !9, flags: DIFlagStaticMember)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !10, line: 32, baseType: !11)
!10 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits/atomic_word.h", directory: "")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !4, file: !5, line: 622, baseType: !13, flags: DIFlagStaticMember)
!13 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!14 = !DISubprogram(name: "Init", scope: !4, file: !5, line: 612, type: !15, scopeLine: 612, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!18 = !DISubprogram(name: "~Init", scope: !4, file: !5, line: 613, type: !15, scopeLine: 613, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!19 = !DISubprogram(name: "Init", scope: !4, file: !5, line: 616, type: !20, scopeLine: 616, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !17, !22}
!22 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!24 = !DISubprogram(name: "operator=", linkageName: "_ZNSt8ios_base4InitaSERKS0_", scope: !4, file: !5, line: 617, type: !25, scopeLine: 617, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !17, !22}
!27 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!28 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !29, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !54, globals: !55, imports: !56, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../src/bad.cpp", directory: "/home/vulchecker/cmake_project_CWE190/hector_build")
!30 = !{!31}
!31 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Ios_Fmtflags", scope: !2, file: !5, line: 57, baseType: !11, size: 32, elements: !32, identifier: "_ZTSSt13_Ios_Fmtflags")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!33 = !DIEnumerator(name: "_S_boolalpha", value: 1)
!34 = !DIEnumerator(name: "_S_dec", value: 2)
!35 = !DIEnumerator(name: "_S_fixed", value: 4)
!36 = !DIEnumerator(name: "_S_hex", value: 8)
!37 = !DIEnumerator(name: "_S_internal", value: 16)
!38 = !DIEnumerator(name: "_S_left", value: 32)
!39 = !DIEnumerator(name: "_S_oct", value: 64)
!40 = !DIEnumerator(name: "_S_right", value: 128)
!41 = !DIEnumerator(name: "_S_scientific", value: 256)
!42 = !DIEnumerator(name: "_S_showbase", value: 512)
!43 = !DIEnumerator(name: "_S_showpoint", value: 1024)
!44 = !DIEnumerator(name: "_S_showpos", value: 2048)
!45 = !DIEnumerator(name: "_S_skipws", value: 4096)
!46 = !DIEnumerator(name: "_S_unitbuf", value: 8192)
!47 = !DIEnumerator(name: "_S_uppercase", value: 16384)
!48 = !DIEnumerator(name: "_S_adjustfield", value: 176)
!49 = !DIEnumerator(name: "_S_basefield", value: 74)
!50 = !DIEnumerator(name: "_S_floatfield", value: 260)
!51 = !DIEnumerator(name: "_S_ios_fmtflags_end", value: 65536)
!52 = !DIEnumerator(name: "_S_ios_fmtflags_max", value: 2147483647)
!53 = !DIEnumerator(name: "_S_ios_fmtflags_min", value: -2147483648)
!54 = !{!11, !31, !6}
!55 = !{!0}
!56 = !{!57, !76, !79, !84, !92, !100, !104, !111, !115, !119, !121, !123, !127, !139, !143, !149, !155, !157, !161, !165, !169, !173, !185, !187, !191, !195, !199, !201, !207, !211, !215, !217, !219, !223, !231, !235, !239, !243, !245, !251, !253, !260, !265, !269, !274, !278, !282, !286, !288, !290, !294, !298, !302, !304, !308, !312, !314, !316, !320, !326, !331, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !401, !405, !409, !416, !420, !423, !426, !429, !431, !433, !435, !438, !441, !444, !447, !450, !452, !457, !461, !464, !467, !469, !471, !473, !475, !478, !481, !484, !487, !490, !492, !496, !500, !505, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !540, !542, !546, !550, !556, !560, !565, !567, !571, !575, !579, !589, !593, !597, !601, !605, !609, !613, !617, !621, !625, !629, !633, !637, !639, !643, !647, !651, !657, !661, !665, !667, !671, !675, !681, !683, !687, !691, !695, !699, !703, !707, !711, !712, !713, !714, !716, !717, !718, !719, !720, !721, !722, !726, !732, !737, !741, !743, !745, !747, !749, !756, !760, !764, !768, !772, !776, !781, !785, !787, !791, !797, !801, !806, !808, !810, !814, !818, !820, !822, !824, !826, !830, !832, !834, !838, !842, !846, !850, !854, !858, !860, !864, !868, !872, !876, !878, !880, !884, !888, !889, !890, !891, !892, !893, !899, !902, !903, !905, !907, !909, !911, !915, !917, !919, !921, !923, !925, !927, !929, !931, !935, !939, !941, !945}
!57 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !58, file: !75, line: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !59, line: 6, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !61, line: 21, baseType: !62)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !63, identifier: "_ZTS11__mbstate_t")
!63 = !{!64, !65}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !62, file: !61, line: 15, baseType: !11, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !62, file: !61, line: 20, baseType: !66, size: 32, offset: 32)
!66 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !62, file: !61, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !67, identifier: "_ZTSN11__mbstate_tUt_E")
!67 = !{!68, !70}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !66, file: !61, line: 18, baseType: !69, size: 32)
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !66, file: !61, line: 19, baseType: !71, size: 32)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32, elements: !73)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !{!74}
!74 = !DISubrange(count: 4)
!75 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwchar", directory: "")
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !77, file: !75, line: 141)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !78, line: 20, baseType: !69)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "")
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !80, file: !75, line: 143)
!80 = !DISubprogram(name: "btowc", scope: !81, file: !81, line: 284, type: !82, flags: DIFlagPrototyped, spFlags: 0)
!81 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!82 = !DISubroutineType(types: !83)
!83 = !{!77, !11}
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !85, file: !75, line: 144)
!85 = !DISubprogram(name: "fgetwc", scope: !81, file: !81, line: 726, type: !86, flags: DIFlagPrototyped, spFlags: 0)
!86 = !DISubroutineType(types: !87)
!87 = !{!77, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !90, line: 5, baseType: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 4, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !93, file: !75, line: 145)
!93 = !DISubprogram(name: "fgetws", scope: !81, file: !81, line: 755, type: !94, flags: DIFlagPrototyped, spFlags: 0)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !98, !11, !99}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !101, file: !75, line: 146)
!101 = !DISubprogram(name: "fputwc", scope: !81, file: !81, line: 740, type: !102, flags: DIFlagPrototyped, spFlags: 0)
!102 = !DISubroutineType(types: !103)
!103 = !{!77, !97, !88}
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !105, file: !75, line: 147)
!105 = !DISubprogram(name: "fputws", scope: !81, file: !81, line: 762, type: !106, flags: DIFlagPrototyped, spFlags: 0)
!106 = !DISubroutineType(types: !107)
!107 = !{!11, !108, !99}
!108 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !112, file: !75, line: 148)
!112 = !DISubprogram(name: "fwide", scope: !81, file: !81, line: 573, type: !113, flags: DIFlagPrototyped, spFlags: 0)
!113 = !DISubroutineType(types: !114)
!114 = !{!11, !88, !11}
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !116, file: !75, line: 149)
!116 = !DISubprogram(name: "fwprintf", scope: !81, file: !81, line: 580, type: !117, flags: DIFlagPrototyped, spFlags: 0)
!117 = !DISubroutineType(types: !118)
!118 = !{!11, !99, !108, null}
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !120, file: !75, line: 150)
!120 = !DISubprogram(name: "fwscanf", linkageName: "__isoc99_fwscanf", scope: !81, file: !81, line: 640, type: !117, flags: DIFlagPrototyped, spFlags: 0)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !122, file: !75, line: 151)
!122 = !DISubprogram(name: "getwc", scope: !81, file: !81, line: 727, type: !86, flags: DIFlagPrototyped, spFlags: 0)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !124, file: !75, line: 152)
!124 = !DISubprogram(name: "getwchar", scope: !81, file: !81, line: 733, type: !125, flags: DIFlagPrototyped, spFlags: 0)
!125 = !DISubroutineType(types: !126)
!126 = !{!77}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !128, file: !75, line: 153)
!128 = !DISubprogram(name: "mbrlen", scope: !81, file: !81, line: 307, type: !129, flags: DIFlagPrototyped, spFlags: 0)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !134, !131, !137}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 46, baseType: !133)
!132 = !DIFile(filename: "/usr/local/lib/clang/10.0.0/include/stddef.h", directory: "")
!133 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!137 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !140, file: !75, line: 154)
!140 = !DISubprogram(name: "mbrtowc", scope: !81, file: !81, line: 296, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!141 = !DISubroutineType(types: !142)
!142 = !{!131, !98, !134, !131, !137}
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !144, file: !75, line: 155)
!144 = !DISubprogram(name: "mbsinit", scope: !81, file: !81, line: 292, type: !145, flags: DIFlagPrototyped, spFlags: 0)
!145 = !DISubroutineType(types: !146)
!146 = !{!11, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !150, file: !75, line: 156)
!150 = !DISubprogram(name: "mbsrtowcs", scope: !81, file: !81, line: 337, type: !151, flags: DIFlagPrototyped, spFlags: 0)
!151 = !DISubroutineType(types: !152)
!152 = !{!131, !98, !153, !131, !137}
!153 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !156, file: !75, line: 157)
!156 = !DISubprogram(name: "putwc", scope: !81, file: !81, line: 741, type: !102, flags: DIFlagPrototyped, spFlags: 0)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !158, file: !75, line: 158)
!158 = !DISubprogram(name: "putwchar", scope: !81, file: !81, line: 747, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!77, !97}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !162, file: !75, line: 160)
!162 = !DISubprogram(name: "swprintf", scope: !81, file: !81, line: 590, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!163 = !DISubroutineType(types: !164)
!164 = !{!11, !98, !131, !108, null}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !166, file: !75, line: 162)
!166 = !DISubprogram(name: "swscanf", linkageName: "__isoc99_swscanf", scope: !81, file: !81, line: 647, type: !167, flags: DIFlagPrototyped, spFlags: 0)
!167 = !DISubroutineType(types: !168)
!168 = !{!11, !108, !108, null}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !170, file: !75, line: 163)
!170 = !DISubprogram(name: "ungetwc", scope: !81, file: !81, line: 770, type: !171, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DISubroutineType(types: !172)
!172 = !{!77, !77, !88}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !174, file: !75, line: 164)
!174 = !DISubprogram(name: "vfwprintf", scope: !81, file: !81, line: 598, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DISubroutineType(types: !176)
!176 = !{!11, !99, !108, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !29, size: 192, flags: DIFlagTypePassByValue, elements: !179, identifier: "_ZTS13__va_list_tag")
!179 = !{!180, !181, !182, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !178, file: !29, baseType: !69, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !178, file: !29, baseType: !69, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !178, file: !29, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !178, file: !29, baseType: !183, size: 64, offset: 128)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !186, file: !75, line: 166)
!186 = !DISubprogram(name: "vfwscanf", linkageName: "__isoc99_vfwscanf", scope: !81, file: !81, line: 693, type: !175, flags: DIFlagPrototyped, spFlags: 0)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !188, file: !75, line: 169)
!188 = !DISubprogram(name: "vswprintf", scope: !81, file: !81, line: 611, type: !189, flags: DIFlagPrototyped, spFlags: 0)
!189 = !DISubroutineType(types: !190)
!190 = !{!11, !98, !131, !108, !177}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !192, file: !75, line: 172)
!192 = !DISubprogram(name: "vswscanf", linkageName: "__isoc99_vswscanf", scope: !81, file: !81, line: 700, type: !193, flags: DIFlagPrototyped, spFlags: 0)
!193 = !DISubroutineType(types: !194)
!194 = !{!11, !108, !108, !177}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !196, file: !75, line: 174)
!196 = !DISubprogram(name: "vwprintf", scope: !81, file: !81, line: 606, type: !197, flags: DIFlagPrototyped, spFlags: 0)
!197 = !DISubroutineType(types: !198)
!198 = !{!11, !108, !177}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !200, file: !75, line: 176)
!200 = !DISubprogram(name: "vwscanf", linkageName: "__isoc99_vwscanf", scope: !81, file: !81, line: 697, type: !197, flags: DIFlagPrototyped, spFlags: 0)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !202, file: !75, line: 178)
!202 = !DISubprogram(name: "wcrtomb", scope: !81, file: !81, line: 301, type: !203, flags: DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{!131, !205, !97, !137}
!205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !208, file: !75, line: 179)
!208 = !DISubprogram(name: "wcscat", scope: !81, file: !81, line: 97, type: !209, flags: DIFlagPrototyped, spFlags: 0)
!209 = !DISubroutineType(types: !210)
!210 = !{!96, !98, !108}
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !212, file: !75, line: 180)
!212 = !DISubprogram(name: "wcscmp", scope: !81, file: !81, line: 106, type: !213, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DISubroutineType(types: !214)
!214 = !{!11, !109, !109}
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !216, file: !75, line: 181)
!216 = !DISubprogram(name: "wcscoll", scope: !81, file: !81, line: 131, type: !213, flags: DIFlagPrototyped, spFlags: 0)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !218, file: !75, line: 182)
!218 = !DISubprogram(name: "wcscpy", scope: !81, file: !81, line: 87, type: !209, flags: DIFlagPrototyped, spFlags: 0)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !220, file: !75, line: 183)
!220 = !DISubprogram(name: "wcscspn", scope: !81, file: !81, line: 187, type: !221, flags: DIFlagPrototyped, spFlags: 0)
!221 = !DISubroutineType(types: !222)
!222 = !{!131, !109, !109}
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !224, file: !75, line: 184)
!224 = !DISubprogram(name: "wcsftime", scope: !81, file: !81, line: 834, type: !225, flags: DIFlagPrototyped, spFlags: 0)
!225 = !DISubroutineType(types: !226)
!226 = !{!131, !98, !131, !108, !227}
!227 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !81, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !232, file: !75, line: 185)
!232 = !DISubprogram(name: "wcslen", scope: !81, file: !81, line: 222, type: !233, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DISubroutineType(types: !234)
!234 = !{!131, !109}
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !236, file: !75, line: 186)
!236 = !DISubprogram(name: "wcsncat", scope: !81, file: !81, line: 101, type: !237, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DISubroutineType(types: !238)
!238 = !{!96, !98, !108, !131}
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !240, file: !75, line: 187)
!240 = !DISubprogram(name: "wcsncmp", scope: !81, file: !81, line: 109, type: !241, flags: DIFlagPrototyped, spFlags: 0)
!241 = !DISubroutineType(types: !242)
!242 = !{!11, !109, !109, !131}
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !244, file: !75, line: 188)
!244 = !DISubprogram(name: "wcsncpy", scope: !81, file: !81, line: 92, type: !237, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !246, file: !75, line: 189)
!246 = !DISubprogram(name: "wcsrtombs", scope: !81, file: !81, line: 343, type: !247, flags: DIFlagPrototyped, spFlags: 0)
!247 = !DISubroutineType(types: !248)
!248 = !{!131, !205, !249, !131, !137}
!249 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !252, file: !75, line: 190)
!252 = !DISubprogram(name: "wcsspn", scope: !81, file: !81, line: 191, type: !221, flags: DIFlagPrototyped, spFlags: 0)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !254, file: !75, line: 191)
!254 = !DISubprogram(name: "wcstod", scope: !81, file: !81, line: 377, type: !255, flags: DIFlagPrototyped, spFlags: 0)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !108, !258}
!257 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!258 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !261, file: !75, line: 193)
!261 = !DISubprogram(name: "wcstof", scope: !81, file: !81, line: 382, type: !262, flags: DIFlagPrototyped, spFlags: 0)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !108, !258}
!264 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !266, file: !75, line: 195)
!266 = !DISubprogram(name: "wcstok", scope: !81, file: !81, line: 217, type: !267, flags: DIFlagPrototyped, spFlags: 0)
!267 = !DISubroutineType(types: !268)
!268 = !{!96, !98, !108, !258}
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !270, file: !75, line: 196)
!270 = !DISubprogram(name: "wcstol", scope: !81, file: !81, line: 428, type: !271, flags: DIFlagPrototyped, spFlags: 0)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !108, !258, !11}
!273 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !275, file: !75, line: 197)
!275 = !DISubprogram(name: "wcstoul", scope: !81, file: !81, line: 433, type: !276, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DISubroutineType(types: !277)
!277 = !{!133, !108, !258, !11}
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !279, file: !75, line: 198)
!279 = !DISubprogram(name: "wcsxfrm", scope: !81, file: !81, line: 135, type: !280, flags: DIFlagPrototyped, spFlags: 0)
!280 = !DISubroutineType(types: !281)
!281 = !{!131, !98, !108, !131}
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !283, file: !75, line: 199)
!283 = !DISubprogram(name: "wctob", scope: !81, file: !81, line: 288, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DISubroutineType(types: !285)
!285 = !{!11, !77}
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !287, file: !75, line: 200)
!287 = !DISubprogram(name: "wmemcmp", scope: !81, file: !81, line: 258, type: !241, flags: DIFlagPrototyped, spFlags: 0)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !289, file: !75, line: 201)
!289 = !DISubprogram(name: "wmemcpy", scope: !81, file: !81, line: 262, type: !237, flags: DIFlagPrototyped, spFlags: 0)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !291, file: !75, line: 202)
!291 = !DISubprogram(name: "wmemmove", scope: !81, file: !81, line: 267, type: !292, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DISubroutineType(types: !293)
!293 = !{!96, !96, !109, !131}
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !295, file: !75, line: 203)
!295 = !DISubprogram(name: "wmemset", scope: !81, file: !81, line: 271, type: !296, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DISubroutineType(types: !297)
!297 = !{!96, !96, !97, !131}
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !299, file: !75, line: 204)
!299 = !DISubprogram(name: "wprintf", scope: !81, file: !81, line: 587, type: !300, flags: DIFlagPrototyped, spFlags: 0)
!300 = !DISubroutineType(types: !301)
!301 = !{!11, !108, null}
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !303, file: !75, line: 205)
!303 = !DISubprogram(name: "wscanf", linkageName: "__isoc99_wscanf", scope: !81, file: !81, line: 644, type: !300, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !305, file: !75, line: 206)
!305 = !DISubprogram(name: "wcschr", scope: !81, file: !81, line: 164, type: !306, flags: DIFlagPrototyped, spFlags: 0)
!306 = !DISubroutineType(types: !307)
!307 = !{!96, !109, !97}
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !309, file: !75, line: 207)
!309 = !DISubprogram(name: "wcspbrk", scope: !81, file: !81, line: 201, type: !310, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DISubroutineType(types: !311)
!311 = !{!96, !109, !109}
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !313, file: !75, line: 208)
!313 = !DISubprogram(name: "wcsrchr", scope: !81, file: !81, line: 174, type: !306, flags: DIFlagPrototyped, spFlags: 0)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !315, file: !75, line: 209)
!315 = !DISubprogram(name: "wcsstr", scope: !81, file: !81, line: 212, type: !310, flags: DIFlagPrototyped, spFlags: 0)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !317, file: !75, line: 210)
!317 = !DISubprogram(name: "wmemchr", scope: !81, file: !81, line: 253, type: !318, flags: DIFlagPrototyped, spFlags: 0)
!318 = !DISubroutineType(types: !319)
!319 = !{!96, !109, !97, !131}
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !322, file: !75, line: 251)
!321 = !DINamespace(name: "__gnu_cxx", scope: null)
!322 = !DISubprogram(name: "wcstold", scope: !81, file: !81, line: 384, type: !323, flags: DIFlagPrototyped, spFlags: 0)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !108, !258}
!325 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !327, file: !75, line: 260)
!327 = !DISubprogram(name: "wcstoll", scope: !81, file: !81, line: 441, type: !328, flags: DIFlagPrototyped, spFlags: 0)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !108, !258, !11}
!330 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !332, file: !75, line: 261)
!332 = !DISubprogram(name: "wcstoull", scope: !81, file: !81, line: 448, type: !333, flags: DIFlagPrototyped, spFlags: 0)
!333 = !DISubroutineType(types: !334)
!334 = !{!335, !108, !258, !11}
!335 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !322, file: !75, line: 267)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !327, file: !75, line: 268)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !332, file: !75, line: 269)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !261, file: !75, line: 283)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !186, file: !75, line: 286)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !192, file: !75, line: 289)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !200, file: !75, line: 292)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !322, file: !75, line: 296)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !327, file: !75, line: 297)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !332, file: !75, line: 298)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !347, file: !348, line: 57)
!347 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !349, file: !348, line: 79, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !350, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!348 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/exception_ptr.h", directory: "")
!349 = !DINamespace(name: "__exception_ptr", scope: !2)
!350 = !{!351, !352, !356, !359, !360, !365, !366, !370, !376, !380, !384, !387, !388, !391, !394}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !347, file: !348, line: 81, baseType: !183, size: 64)
!352 = !DISubprogram(name: "exception_ptr", scope: !347, file: !348, line: 83, type: !353, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !355, !183}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!356 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !347, file: !348, line: 85, type: !357, scopeLine: 85, flags: DIFlagPrototyped, spFlags: 0)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !355}
!359 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !347, file: !348, line: 86, type: !357, scopeLine: 86, flags: DIFlagPrototyped, spFlags: 0)
!360 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !347, file: !348, line: 88, type: !361, scopeLine: 88, flags: DIFlagPrototyped, spFlags: 0)
!361 = !DISubroutineType(types: !362)
!362 = !{!183, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!365 = !DISubprogram(name: "exception_ptr", scope: !347, file: !348, line: 96, type: !357, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!366 = !DISubprogram(name: "exception_ptr", scope: !347, file: !348, line: 98, type: !367, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !355, !369}
!369 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !364, size: 64)
!370 = !DISubprogram(name: "exception_ptr", scope: !347, file: !348, line: 101, type: !371, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !355, !373}
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !2, file: !374, line: 262, baseType: !375)
!374 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits/c++config.h", directory: "")
!375 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!376 = !DISubprogram(name: "exception_ptr", scope: !347, file: !348, line: 105, type: !377, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !355, !379}
!379 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !347, size: 64)
!380 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !347, file: !348, line: 118, type: !381, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!381 = !DISubroutineType(types: !382)
!382 = !{!383, !355, !369}
!383 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !347, size: 64)
!384 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !347, file: !348, line: 122, type: !385, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!385 = !DISubroutineType(types: !386)
!386 = !{!383, !355, !379}
!387 = !DISubprogram(name: "~exception_ptr", scope: !347, file: !348, line: 129, type: !357, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!388 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !347, file: !348, line: 132, type: !389, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !355, !383}
!391 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !347, file: !348, line: 144, type: !392, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!392 = !DISubroutineType(types: !393)
!393 = !{!13, !363}
!394 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !347, file: !348, line: 153, type: !395, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!395 = !DISubroutineType(types: !396)
!396 = !{!397, !363}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !2, file: !400, line: 88, flags: DIFlagFwdDecl)
!400 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/typeinfo", directory: "")
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !349, entity: !402, file: !348, line: 73)
!402 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !348, line: 69, type: !403, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !347}
!405 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !406, entity: !407, file: !408, line: 58)
!406 = !DINamespace(name: "__gnu_debug", scope: null)
!407 = !DINamespace(name: "__debug", scope: !2)
!408 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/debug/debug.h", directory: "")
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !410, file: !415, line: 47)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !411, line: 24, baseType: !412)
!411 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !413, line: 37, baseType: !414)
!413 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!414 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!415 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdint", directory: "")
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !417, file: !415, line: 48)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !411, line: 25, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !413, line: 39, baseType: !419)
!419 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !421, file: !415, line: 49)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !411, line: 26, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !413, line: 41, baseType: !11)
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !424, file: !415, line: 50)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !411, line: 27, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !413, line: 44, baseType: !273)
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !427, file: !415, line: 52)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !428, line: 58, baseType: !414)
!428 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !430, file: !415, line: 53)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !428, line: 60, baseType: !273)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !432, file: !415, line: 54)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !428, line: 61, baseType: !273)
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !434, file: !415, line: 55)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !428, line: 62, baseType: !273)
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !436, file: !415, line: 57)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !428, line: 43, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !413, line: 52, baseType: !412)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !439, file: !415, line: 58)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !428, line: 44, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !413, line: 54, baseType: !418)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !442, file: !415, line: 59)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !428, line: 45, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !413, line: 56, baseType: !422)
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !445, file: !415, line: 60)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !428, line: 46, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !413, line: 58, baseType: !425)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !448, file: !415, line: 62)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !428, line: 101, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !413, line: 72, baseType: !273)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !451, file: !415, line: 63)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !428, line: 87, baseType: !273)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !453, file: !415, line: 65)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !454, line: 24, baseType: !455)
!454 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !413, line: 38, baseType: !456)
!456 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !458, file: !415, line: 66)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !454, line: 25, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !413, line: 40, baseType: !460)
!460 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !462, file: !415, line: 67)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !454, line: 26, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !413, line: 42, baseType: !69)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !465, file: !415, line: 68)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !454, line: 27, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !413, line: 45, baseType: !133)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !468, file: !415, line: 70)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !428, line: 71, baseType: !456)
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !470, file: !415, line: 71)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !428, line: 73, baseType: !133)
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !472, file: !415, line: 72)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !428, line: 74, baseType: !133)
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !474, file: !415, line: 73)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !428, line: 75, baseType: !133)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !476, file: !415, line: 75)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !428, line: 49, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !413, line: 53, baseType: !455)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !479, file: !415, line: 76)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !428, line: 50, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !413, line: 55, baseType: !459)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !482, file: !415, line: 77)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !428, line: 51, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !413, line: 57, baseType: !463)
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !485, file: !415, line: 78)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !428, line: 52, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !413, line: 59, baseType: !466)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !488, file: !415, line: 80)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !428, line: 102, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !413, line: 73, baseType: !133)
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !491, file: !415, line: 81)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !428, line: 90, baseType: !133)
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !493, file: !495, line: 53)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !494, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!494 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!495 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/clocale", directory: "")
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !497, file: !495, line: 54)
!497 = !DISubprogram(name: "setlocale", scope: !494, file: !494, line: 122, type: !498, flags: DIFlagPrototyped, spFlags: 0)
!498 = !DISubroutineType(types: !499)
!499 = !{!206, !11, !135}
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !501, file: !495, line: 55)
!501 = !DISubprogram(name: "localeconv", scope: !494, file: !494, line: 125, type: !502, flags: DIFlagPrototyped, spFlags: 0)
!502 = !DISubroutineType(types: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !506, file: !510, line: 64)
!506 = !DISubprogram(name: "isalnum", scope: !507, file: !507, line: 108, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!508 = !DISubroutineType(types: !509)
!509 = !{!11, !11}
!510 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cctype", directory: "")
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !512, file: !510, line: 65)
!512 = !DISubprogram(name: "isalpha", scope: !507, file: !507, line: 109, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !514, file: !510, line: 66)
!514 = !DISubprogram(name: "iscntrl", scope: !507, file: !507, line: 110, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !516, file: !510, line: 67)
!516 = !DISubprogram(name: "isdigit", scope: !507, file: !507, line: 111, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !518, file: !510, line: 68)
!518 = !DISubprogram(name: "isgraph", scope: !507, file: !507, line: 113, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !520, file: !510, line: 69)
!520 = !DISubprogram(name: "islower", scope: !507, file: !507, line: 112, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !522, file: !510, line: 70)
!522 = !DISubprogram(name: "isprint", scope: !507, file: !507, line: 114, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !524, file: !510, line: 71)
!524 = !DISubprogram(name: "ispunct", scope: !507, file: !507, line: 115, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !526, file: !510, line: 72)
!526 = !DISubprogram(name: "isspace", scope: !507, file: !507, line: 116, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !528, file: !510, line: 73)
!528 = !DISubprogram(name: "isupper", scope: !507, file: !507, line: 117, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !530, file: !510, line: 74)
!530 = !DISubprogram(name: "isxdigit", scope: !507, file: !507, line: 118, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !532, file: !510, line: 75)
!532 = !DISubprogram(name: "tolower", scope: !507, file: !507, line: 122, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !534, file: !510, line: 76)
!534 = !DISubprogram(name: "toupper", scope: !507, file: !507, line: 125, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !536, file: !510, line: 87)
!536 = !DISubprogram(name: "isblank", scope: !507, file: !507, line: 130, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !538, file: !539, line: 44)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !374, line: 258, baseType: !133)
!539 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/ext/new_allocator.h", directory: "")
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !541, file: !539, line: 45)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !374, line: 259, baseType: !273)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !543, file: !545, line: 52)
!543 = !DISubprogram(name: "abs", scope: !544, file: !544, line: 840, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!544 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!545 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/std_abs.h", directory: "")
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !547, file: !549, line: 127)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !544, line: 62, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!549 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdlib", directory: "")
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !551, file: !549, line: 128)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !544, line: 70, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !553, identifier: "_ZTS6ldiv_t")
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !552, file: !544, line: 68, baseType: !273, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !552, file: !544, line: 69, baseType: !273, size: 64, offset: 64)
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !557, file: !549, line: 130)
!557 = !DISubprogram(name: "abort", scope: !544, file: !544, line: 591, type: !558, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!558 = !DISubroutineType(types: !559)
!559 = !{null}
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !561, file: !549, line: 134)
!561 = !DISubprogram(name: "atexit", scope: !544, file: !544, line: 595, type: !562, flags: DIFlagPrototyped, spFlags: 0)
!562 = !DISubroutineType(types: !563)
!563 = !{!11, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !566, file: !549, line: 137)
!566 = !DISubprogram(name: "at_quick_exit", scope: !544, file: !544, line: 600, type: !562, flags: DIFlagPrototyped, spFlags: 0)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !568, file: !549, line: 140)
!568 = !DISubprogram(name: "atof", scope: !544, file: !544, line: 101, type: !569, flags: DIFlagPrototyped, spFlags: 0)
!569 = !DISubroutineType(types: !570)
!570 = !{!257, !135}
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !572, file: !549, line: 141)
!572 = !DISubprogram(name: "atoi", scope: !544, file: !544, line: 104, type: !573, flags: DIFlagPrototyped, spFlags: 0)
!573 = !DISubroutineType(types: !574)
!574 = !{!11, !135}
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !576, file: !549, line: 142)
!576 = !DISubprogram(name: "atol", scope: !544, file: !544, line: 107, type: !577, flags: DIFlagPrototyped, spFlags: 0)
!577 = !DISubroutineType(types: !578)
!578 = !{!273, !135}
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !580, file: !549, line: 143)
!580 = !DISubprogram(name: "bsearch", scope: !544, file: !544, line: 820, type: !581, flags: DIFlagPrototyped, spFlags: 0)
!581 = !DISubroutineType(types: !582)
!582 = !{!183, !583, !583, !131, !131, !585}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !544, line: 808, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!11, !583, !583}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !590, file: !549, line: 144)
!590 = !DISubprogram(name: "calloc", scope: !544, file: !544, line: 542, type: !591, flags: DIFlagPrototyped, spFlags: 0)
!591 = !DISubroutineType(types: !592)
!592 = !{!183, !131, !131}
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !594, file: !549, line: 145)
!594 = !DISubprogram(name: "div", scope: !544, file: !544, line: 852, type: !595, flags: DIFlagPrototyped, spFlags: 0)
!595 = !DISubroutineType(types: !596)
!596 = !{!547, !11, !11}
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !598, file: !549, line: 146)
!598 = !DISubprogram(name: "exit", scope: !544, file: !544, line: 617, type: !599, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !11}
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !602, file: !549, line: 147)
!602 = !DISubprogram(name: "free", scope: !544, file: !544, line: 565, type: !603, flags: DIFlagPrototyped, spFlags: 0)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !183}
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !606, file: !549, line: 148)
!606 = !DISubprogram(name: "getenv", scope: !544, file: !544, line: 634, type: !607, flags: DIFlagPrototyped, spFlags: 0)
!607 = !DISubroutineType(types: !608)
!608 = !{!206, !135}
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !610, file: !549, line: 149)
!610 = !DISubprogram(name: "labs", scope: !544, file: !544, line: 841, type: !611, flags: DIFlagPrototyped, spFlags: 0)
!611 = !DISubroutineType(types: !612)
!612 = !{!273, !273}
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !614, file: !549, line: 150)
!614 = !DISubprogram(name: "ldiv", scope: !544, file: !544, line: 854, type: !615, flags: DIFlagPrototyped, spFlags: 0)
!615 = !DISubroutineType(types: !616)
!616 = !{!551, !273, !273}
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !618, file: !549, line: 151)
!618 = !DISubprogram(name: "malloc", scope: !544, file: !544, line: 539, type: !619, flags: DIFlagPrototyped, spFlags: 0)
!619 = !DISubroutineType(types: !620)
!620 = !{!183, !131}
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !622, file: !549, line: 153)
!622 = !DISubprogram(name: "mblen", scope: !544, file: !544, line: 922, type: !623, flags: DIFlagPrototyped, spFlags: 0)
!623 = !DISubroutineType(types: !624)
!624 = !{!11, !135, !131}
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !626, file: !549, line: 154)
!626 = !DISubprogram(name: "mbstowcs", scope: !544, file: !544, line: 933, type: !627, flags: DIFlagPrototyped, spFlags: 0)
!627 = !DISubroutineType(types: !628)
!628 = !{!131, !98, !134, !131}
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !630, file: !549, line: 155)
!630 = !DISubprogram(name: "mbtowc", scope: !544, file: !544, line: 925, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{!11, !98, !134, !131}
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !634, file: !549, line: 157)
!634 = !DISubprogram(name: "qsort", scope: !544, file: !544, line: 830, type: !635, flags: DIFlagPrototyped, spFlags: 0)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !183, !131, !131, !585}
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !638, file: !549, line: 160)
!638 = !DISubprogram(name: "quick_exit", scope: !544, file: !544, line: 623, type: !599, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !640, file: !549, line: 163)
!640 = !DISubprogram(name: "rand", scope: !544, file: !544, line: 453, type: !641, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DISubroutineType(types: !642)
!642 = !{!11}
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !644, file: !549, line: 164)
!644 = !DISubprogram(name: "realloc", scope: !544, file: !544, line: 550, type: !645, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{!183, !183, !131}
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !648, file: !549, line: 165)
!648 = !DISubprogram(name: "srand", scope: !544, file: !544, line: 455, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !69}
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !652, file: !549, line: 166)
!652 = !DISubprogram(name: "strtod", scope: !544, file: !544, line: 117, type: !653, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DISubroutineType(types: !654)
!654 = !{!257, !134, !655}
!655 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !658, file: !549, line: 167)
!658 = !DISubprogram(name: "strtol", scope: !544, file: !544, line: 176, type: !659, flags: DIFlagPrototyped, spFlags: 0)
!659 = !DISubroutineType(types: !660)
!660 = !{!273, !134, !655, !11}
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !662, file: !549, line: 168)
!662 = !DISubprogram(name: "strtoul", scope: !544, file: !544, line: 180, type: !663, flags: DIFlagPrototyped, spFlags: 0)
!663 = !DISubroutineType(types: !664)
!664 = !{!133, !134, !655, !11}
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !666, file: !549, line: 169)
!666 = !DISubprogram(name: "system", scope: !544, file: !544, line: 784, type: !573, flags: DIFlagPrototyped, spFlags: 0)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !668, file: !549, line: 171)
!668 = !DISubprogram(name: "wcstombs", scope: !544, file: !544, line: 936, type: !669, flags: DIFlagPrototyped, spFlags: 0)
!669 = !DISubroutineType(types: !670)
!670 = !{!131, !205, !108, !131}
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !672, file: !549, line: 172)
!672 = !DISubprogram(name: "wctomb", scope: !544, file: !544, line: 929, type: !673, flags: DIFlagPrototyped, spFlags: 0)
!673 = !DISubroutineType(types: !674)
!674 = !{!11, !206, !97}
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !676, file: !549, line: 200)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !544, line: 80, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !678, identifier: "_ZTS7lldiv_t")
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !677, file: !544, line: 78, baseType: !330, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !677, file: !544, line: 79, baseType: !330, size: 64, offset: 64)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !682, file: !549, line: 206)
!682 = !DISubprogram(name: "_Exit", scope: !544, file: !544, line: 629, type: !599, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !684, file: !549, line: 210)
!684 = !DISubprogram(name: "llabs", scope: !544, file: !544, line: 844, type: !685, flags: DIFlagPrototyped, spFlags: 0)
!685 = !DISubroutineType(types: !686)
!686 = !{!330, !330}
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !688, file: !549, line: 216)
!688 = !DISubprogram(name: "lldiv", scope: !544, file: !544, line: 858, type: !689, flags: DIFlagPrototyped, spFlags: 0)
!689 = !DISubroutineType(types: !690)
!690 = !{!676, !330, !330}
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !692, file: !549, line: 227)
!692 = !DISubprogram(name: "atoll", scope: !544, file: !544, line: 112, type: !693, flags: DIFlagPrototyped, spFlags: 0)
!693 = !DISubroutineType(types: !694)
!694 = !{!330, !135}
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !696, file: !549, line: 228)
!696 = !DISubprogram(name: "strtoll", scope: !544, file: !544, line: 200, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DISubroutineType(types: !698)
!698 = !{!330, !134, !655, !11}
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !700, file: !549, line: 229)
!700 = !DISubprogram(name: "strtoull", scope: !544, file: !544, line: 205, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!335, !134, !655, !11}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !704, file: !549, line: 231)
!704 = !DISubprogram(name: "strtof", scope: !544, file: !544, line: 123, type: !705, flags: DIFlagPrototyped, spFlags: 0)
!705 = !DISubroutineType(types: !706)
!706 = !{!264, !134, !655}
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !708, file: !549, line: 232)
!708 = !DISubprogram(name: "strtold", scope: !544, file: !544, line: 126, type: !709, flags: DIFlagPrototyped, spFlags: 0)
!709 = !DISubroutineType(types: !710)
!710 = !{!325, !134, !655}
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !676, file: !549, line: 240)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !682, file: !549, line: 242)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !684, file: !549, line: 244)
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !715, file: !549, line: 245)
!715 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !321, file: !549, line: 213, type: !689, flags: DIFlagPrototyped, spFlags: 0)
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !688, file: !549, line: 246)
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !692, file: !549, line: 248)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !704, file: !549, line: 249)
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !696, file: !549, line: 250)
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !700, file: !549, line: 251)
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !708, file: !549, line: 252)
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !723, file: !725, line: 98)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !724, line: 7, baseType: !91)
!724 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!725 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdio", directory: "")
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !727, file: !725, line: 99)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !728, line: 84, baseType: !729)
!728 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !730, line: 14, baseType: !731)
!730 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "")
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !730, line: 10, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !733, file: !725, line: 101)
!733 = !DISubprogram(name: "clearerr", scope: !728, file: !728, line: 757, type: !734, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !738, file: !725, line: 102)
!738 = !DISubprogram(name: "fclose", scope: !728, file: !728, line: 213, type: !739, flags: DIFlagPrototyped, spFlags: 0)
!739 = !DISubroutineType(types: !740)
!740 = !{!11, !736}
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !742, file: !725, line: 103)
!742 = !DISubprogram(name: "feof", scope: !728, file: !728, line: 759, type: !739, flags: DIFlagPrototyped, spFlags: 0)
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !744, file: !725, line: 104)
!744 = !DISubprogram(name: "ferror", scope: !728, file: !728, line: 761, type: !739, flags: DIFlagPrototyped, spFlags: 0)
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !746, file: !725, line: 105)
!746 = !DISubprogram(name: "fflush", scope: !728, file: !728, line: 218, type: !739, flags: DIFlagPrototyped, spFlags: 0)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !748, file: !725, line: 106)
!748 = !DISubprogram(name: "fgetc", scope: !728, file: !728, line: 485, type: !739, flags: DIFlagPrototyped, spFlags: 0)
!749 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !750, file: !725, line: 107)
!750 = !DISubprogram(name: "fgetpos", scope: !728, file: !728, line: 731, type: !751, flags: DIFlagPrototyped, spFlags: 0)
!751 = !DISubroutineType(types: !752)
!752 = !{!11, !753, !754}
!753 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !736)
!754 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !757, file: !725, line: 108)
!757 = !DISubprogram(name: "fgets", scope: !728, file: !728, line: 564, type: !758, flags: DIFlagPrototyped, spFlags: 0)
!758 = !DISubroutineType(types: !759)
!759 = !{!206, !205, !11, !753}
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !761, file: !725, line: 109)
!761 = !DISubprogram(name: "fopen", scope: !728, file: !728, line: 246, type: !762, flags: DIFlagPrototyped, spFlags: 0)
!762 = !DISubroutineType(types: !763)
!763 = !{!736, !134, !134}
!764 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !765, file: !725, line: 110)
!765 = !DISubprogram(name: "fprintf", scope: !728, file: !728, line: 326, type: !766, flags: DIFlagPrototyped, spFlags: 0)
!766 = !DISubroutineType(types: !767)
!767 = !{!11, !753, !134, null}
!768 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !769, file: !725, line: 111)
!769 = !DISubprogram(name: "fputc", scope: !728, file: !728, line: 521, type: !770, flags: DIFlagPrototyped, spFlags: 0)
!770 = !DISubroutineType(types: !771)
!771 = !{!11, !11, !736}
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !773, file: !725, line: 112)
!773 = !DISubprogram(name: "fputs", scope: !728, file: !728, line: 626, type: !774, flags: DIFlagPrototyped, spFlags: 0)
!774 = !DISubroutineType(types: !775)
!775 = !{!11, !134, !753}
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !777, file: !725, line: 113)
!777 = !DISubprogram(name: "fread", scope: !728, file: !728, line: 646, type: !778, flags: DIFlagPrototyped, spFlags: 0)
!778 = !DISubroutineType(types: !779)
!779 = !{!131, !780, !131, !131, !753}
!780 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !183)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !782, file: !725, line: 114)
!782 = !DISubprogram(name: "freopen", scope: !728, file: !728, line: 252, type: !783, flags: DIFlagPrototyped, spFlags: 0)
!783 = !DISubroutineType(types: !784)
!784 = !{!736, !134, !134, !753}
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !786, file: !725, line: 115)
!786 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !728, file: !728, line: 407, type: !766, flags: DIFlagPrototyped, spFlags: 0)
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !788, file: !725, line: 116)
!788 = !DISubprogram(name: "fseek", scope: !728, file: !728, line: 684, type: !789, flags: DIFlagPrototyped, spFlags: 0)
!789 = !DISubroutineType(types: !790)
!790 = !{!11, !736, !273, !11}
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !792, file: !725, line: 117)
!792 = !DISubprogram(name: "fsetpos", scope: !728, file: !728, line: 736, type: !793, flags: DIFlagPrototyped, spFlags: 0)
!793 = !DISubroutineType(types: !794)
!794 = !{!11, !736, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !798, file: !725, line: 118)
!798 = !DISubprogram(name: "ftell", scope: !728, file: !728, line: 689, type: !799, flags: DIFlagPrototyped, spFlags: 0)
!799 = !DISubroutineType(types: !800)
!800 = !{!273, !736}
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !802, file: !725, line: 119)
!802 = !DISubprogram(name: "fwrite", scope: !728, file: !728, line: 652, type: !803, flags: DIFlagPrototyped, spFlags: 0)
!803 = !DISubroutineType(types: !804)
!804 = !{!131, !805, !131, !131, !753}
!805 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !583)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !807, file: !725, line: 120)
!807 = !DISubprogram(name: "getc", scope: !728, file: !728, line: 486, type: !739, flags: DIFlagPrototyped, spFlags: 0)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !809, file: !725, line: 121)
!809 = !DISubprogram(name: "getchar", scope: !728, file: !728, line: 492, type: !641, flags: DIFlagPrototyped, spFlags: 0)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !811, file: !725, line: 126)
!811 = !DISubprogram(name: "perror", scope: !728, file: !728, line: 775, type: !812, flags: DIFlagPrototyped, spFlags: 0)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !135}
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !815, file: !725, line: 127)
!815 = !DISubprogram(name: "printf", scope: !728, file: !728, line: 332, type: !816, flags: DIFlagPrototyped, spFlags: 0)
!816 = !DISubroutineType(types: !817)
!817 = !{!11, !134, null}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !819, file: !725, line: 128)
!819 = !DISubprogram(name: "putc", scope: !728, file: !728, line: 522, type: !770, flags: DIFlagPrototyped, spFlags: 0)
!820 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !821, file: !725, line: 129)
!821 = !DISubprogram(name: "putchar", scope: !728, file: !728, line: 528, type: !508, flags: DIFlagPrototyped, spFlags: 0)
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !823, file: !725, line: 130)
!823 = !DISubprogram(name: "puts", scope: !728, file: !728, line: 632, type: !573, flags: DIFlagPrototyped, spFlags: 0)
!824 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !825, file: !725, line: 131)
!825 = !DISubprogram(name: "remove", scope: !728, file: !728, line: 146, type: !573, flags: DIFlagPrototyped, spFlags: 0)
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !827, file: !725, line: 132)
!827 = !DISubprogram(name: "rename", scope: !728, file: !728, line: 148, type: !828, flags: DIFlagPrototyped, spFlags: 0)
!828 = !DISubroutineType(types: !829)
!829 = !{!11, !135, !135}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !831, file: !725, line: 133)
!831 = !DISubprogram(name: "rewind", scope: !728, file: !728, line: 694, type: !734, flags: DIFlagPrototyped, spFlags: 0)
!832 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !833, file: !725, line: 134)
!833 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !728, file: !728, line: 410, type: !816, flags: DIFlagPrototyped, spFlags: 0)
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !835, file: !725, line: 135)
!835 = !DISubprogram(name: "setbuf", scope: !728, file: !728, line: 304, type: !836, flags: DIFlagPrototyped, spFlags: 0)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !753, !205}
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !839, file: !725, line: 136)
!839 = !DISubprogram(name: "setvbuf", scope: !728, file: !728, line: 308, type: !840, flags: DIFlagPrototyped, spFlags: 0)
!840 = !DISubroutineType(types: !841)
!841 = !{!11, !753, !205, !11, !131}
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !843, file: !725, line: 137)
!843 = !DISubprogram(name: "sprintf", scope: !728, file: !728, line: 334, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!844 = !DISubroutineType(types: !845)
!845 = !{!11, !205, !134, null}
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !847, file: !725, line: 138)
!847 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !728, file: !728, line: 412, type: !848, flags: DIFlagPrototyped, spFlags: 0)
!848 = !DISubroutineType(types: !849)
!849 = !{!11, !134, !134, null}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !851, file: !725, line: 139)
!851 = !DISubprogram(name: "tmpfile", scope: !728, file: !728, line: 173, type: !852, flags: DIFlagPrototyped, spFlags: 0)
!852 = !DISubroutineType(types: !853)
!853 = !{!736}
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !855, file: !725, line: 141)
!855 = !DISubprogram(name: "tmpnam", scope: !728, file: !728, line: 187, type: !856, flags: DIFlagPrototyped, spFlags: 0)
!856 = !DISubroutineType(types: !857)
!857 = !{!206, !206}
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !859, file: !725, line: 143)
!859 = !DISubprogram(name: "ungetc", scope: !728, file: !728, line: 639, type: !770, flags: DIFlagPrototyped, spFlags: 0)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !861, file: !725, line: 144)
!861 = !DISubprogram(name: "vfprintf", scope: !728, file: !728, line: 341, type: !862, flags: DIFlagPrototyped, spFlags: 0)
!862 = !DISubroutineType(types: !863)
!863 = !{!11, !753, !134, !177}
!864 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !865, file: !725, line: 145)
!865 = !DISubprogram(name: "vprintf", scope: !728, file: !728, line: 347, type: !866, flags: DIFlagPrototyped, spFlags: 0)
!866 = !DISubroutineType(types: !867)
!867 = !{!11, !134, !177}
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !869, file: !725, line: 146)
!869 = !DISubprogram(name: "vsprintf", scope: !728, file: !728, line: 349, type: !870, flags: DIFlagPrototyped, spFlags: 0)
!870 = !DISubroutineType(types: !871)
!871 = !{!11, !205, !134, !177}
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !873, file: !725, line: 175)
!873 = !DISubprogram(name: "snprintf", scope: !728, file: !728, line: 354, type: !874, flags: DIFlagPrototyped, spFlags: 0)
!874 = !DISubroutineType(types: !875)
!875 = !{!11, !205, !131, !134, null}
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !877, file: !725, line: 176)
!877 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !728, file: !728, line: 451, type: !862, flags: DIFlagPrototyped, spFlags: 0)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !879, file: !725, line: 177)
!879 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !728, file: !728, line: 456, type: !866, flags: DIFlagPrototyped, spFlags: 0)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !881, file: !725, line: 178)
!881 = !DISubprogram(name: "vsnprintf", scope: !728, file: !728, line: 358, type: !882, flags: DIFlagPrototyped, spFlags: 0)
!882 = !DISubroutineType(types: !883)
!883 = !{!11, !205, !131, !134, !177}
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !321, entity: !885, file: !725, line: 179)
!885 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !728, file: !728, line: 459, type: !886, flags: DIFlagPrototyped, spFlags: 0)
!886 = !DISubroutineType(types: !887)
!887 = !{!11, !134, !134, !177}
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !873, file: !725, line: 185)
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !877, file: !725, line: 186)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !879, file: !725, line: 187)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !881, file: !725, line: 188)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !885, file: !725, line: 189)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !894, file: !898, line: 82)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !895, line: 48, baseType: !896)
!895 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!898 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cwctype", directory: "")
!899 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !900, file: !898, line: 83)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !901, line: 38, baseType: !133)
!901 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "")
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !77, file: !898, line: 84)
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !904, file: !898, line: 86)
!904 = !DISubprogram(name: "iswalnum", scope: !901, file: !901, line: 95, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !906, file: !898, line: 87)
!906 = !DISubprogram(name: "iswalpha", scope: !901, file: !901, line: 101, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !908, file: !898, line: 89)
!908 = !DISubprogram(name: "iswblank", scope: !901, file: !901, line: 146, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !910, file: !898, line: 91)
!910 = !DISubprogram(name: "iswcntrl", scope: !901, file: !901, line: 104, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !912, file: !898, line: 92)
!912 = !DISubprogram(name: "iswctype", scope: !901, file: !901, line: 159, type: !913, flags: DIFlagPrototyped, spFlags: 0)
!913 = !DISubroutineType(types: !914)
!914 = !{!11, !77, !900}
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !916, file: !898, line: 93)
!916 = !DISubprogram(name: "iswdigit", scope: !901, file: !901, line: 108, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !918, file: !898, line: 94)
!918 = !DISubprogram(name: "iswgraph", scope: !901, file: !901, line: 112, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !920, file: !898, line: 95)
!920 = !DISubprogram(name: "iswlower", scope: !901, file: !901, line: 117, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !922, file: !898, line: 96)
!922 = !DISubprogram(name: "iswprint", scope: !901, file: !901, line: 120, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !924, file: !898, line: 97)
!924 = !DISubprogram(name: "iswpunct", scope: !901, file: !901, line: 125, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !926, file: !898, line: 98)
!926 = !DISubprogram(name: "iswspace", scope: !901, file: !901, line: 130, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !928, file: !898, line: 99)
!928 = !DISubprogram(name: "iswupper", scope: !901, file: !901, line: 135, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!929 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !930, file: !898, line: 100)
!930 = !DISubprogram(name: "iswxdigit", scope: !901, file: !901, line: 140, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !932, file: !898, line: 101)
!932 = !DISubprogram(name: "towctrans", scope: !895, file: !895, line: 55, type: !933, flags: DIFlagPrototyped, spFlags: 0)
!933 = !DISubroutineType(types: !934)
!934 = !{!77, !77, !894}
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !936, file: !898, line: 102)
!936 = !DISubprogram(name: "towlower", scope: !901, file: !901, line: 166, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!937 = !DISubroutineType(types: !938)
!938 = !{!77, !77}
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !940, file: !898, line: 103)
!940 = !DISubprogram(name: "towupper", scope: !901, file: !901, line: 169, type: !937, flags: DIFlagPrototyped, spFlags: 0)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !942, file: !898, line: 104)
!942 = !DISubprogram(name: "wctrans", scope: !895, file: !895, line: 52, type: !943, flags: DIFlagPrototyped, spFlags: 0)
!943 = !DISubroutineType(types: !944)
!944 = !{!894, !135}
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !946, file: !898, line: 105)
!946 = !DISubprogram(name: "wctype", scope: !901, file: !901, line: 155, type: !947, flags: DIFlagPrototyped, spFlags: 0)
!947 = !DISubroutineType(types: !948)
!948 = !{!900, !135}
!949 = !{!"clang version 10.0.0 "}
!950 = !{i32 7, !"Dwarf Version", i32 4}
!951 = !{i32 2, !"Debug Info Version", i32 3}
!952 = !{i32 1, !"wchar_size", i32 4}
!953 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_bad.cpp", scope: !29, file: !29, type: !954, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !955)
!954 = !DISubroutineType(types: !955)
!955 = !{}
!956 = !DILocation(line: 0, scope: !953)
!957 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !3, file: !3, line: 74, type: !558, scopeLine: 74, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !28, retainedNodes: !955)
!958 = !DILocation(line: 74, column: 25, scope: !957)
!959 = distinct !DISubprogram(name: "printHexCharLine", linkageName: "_Z16printHexCharLinec", scope: !29, file: !29, line: 4, type: !960, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !955)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !72}
!962 = !DILocalVariable(name: "c", arg: 1, scope: !959, file: !29, line: 4, type: !72)
!963 = !DILocation(line: 4, column: 28, scope: !959)
!964 = !DILocation(line: 6, column: 15, scope: !959)
!965 = !DILocation(line: 6, column: 47, scope: !959)
!966 = !DILocation(line: 6, column: 27, scope: !959)
!967 = !DILocation(line: 6, column: 50, scope: !959)
!968 = !DILocation(line: 7, column: 1, scope: !959)
!969 = distinct !DISubprogram(name: "hex", linkageName: "_ZSt3hexRSt8ios_base", scope: !2, file: !5, line: 1036, type: !970, scopeLine: 1037, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !955)
!970 = !DISubroutineType(types: !971)
!971 = !{!972, !972}
!972 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!973 = !DILocalVariable(name: "__base", arg: 1, scope: !969, file: !5, line: 1036, type: !972)
!974 = !DILocation(line: 1036, column: 17, scope: !969)
!975 = !DILocation(line: 1038, column: 5, scope: !969)
!976 = !DILocation(line: 1038, column: 12, scope: !969)
!977 = !DILocation(line: 1039, column: 12, scope: !969)
!978 = !DILocation(line: 1039, column: 5, scope: !969)
!979 = distinct !DISubprogram(name: "setf", linkageName: "_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_", scope: !6, file: !5, line: 675, type: !980, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, declaration: !984, retainedNodes: !955)
!980 = !DISubroutineType(types: !981)
!981 = !{!982, !983, !982, !982}
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmtflags", scope: !6, file: !5, line: 323, baseType: !31)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!984 = !DISubprogram(name: "setf", linkageName: "_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_", scope: !6, file: !5, line: 675, type: !980, scopeLine: 675, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!985 = !DILocalVariable(name: "this", arg: 1, scope: !979, type: !986, flags: DIFlagArtificial | DIFlagObjectPointer)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!987 = !DILocation(line: 0, scope: !979)
!988 = !DILocalVariable(name: "__fmtfl", arg: 2, scope: !979, file: !5, line: 675, type: !982)
!989 = !DILocation(line: 675, column: 19, scope: !979)
!990 = !DILocalVariable(name: "__mask", arg: 3, scope: !979, file: !5, line: 675, type: !982)
!991 = !DILocation(line: 675, column: 37, scope: !979)
!992 = !DILocalVariable(name: "__old", scope: !979, file: !5, line: 677, type: !982)
!993 = !DILocation(line: 677, column: 16, scope: !979)
!994 = !DILocation(line: 677, column: 24, scope: !979)
!995 = !DILocation(line: 678, column: 20, scope: !979)
!996 = !DILocation(line: 678, column: 19, scope: !979)
!997 = !DILocation(line: 678, column: 7, scope: !979)
!998 = !DILocation(line: 678, column: 16, scope: !979)
!999 = !DILocation(line: 679, column: 20, scope: !979)
!1000 = !DILocation(line: 679, column: 30, scope: !979)
!1001 = !DILocation(line: 679, column: 28, scope: !979)
!1002 = !DILocation(line: 679, column: 7, scope: !979)
!1003 = !DILocation(line: 679, column: 16, scope: !979)
!1004 = !DILocation(line: 680, column: 14, scope: !979)
!1005 = !DILocation(line: 680, column: 7, scope: !979)
!1006 = distinct !DISubprogram(name: "operator~", linkageName: "_ZStcoSt13_Ios_Fmtflags", scope: !2, file: !5, line: 95, type: !1007, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !955)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!31, !31}
!1009 = !DILocalVariable(name: "__a", arg: 1, scope: !1006, file: !5, line: 95, type: !31)
!1010 = !DILocation(line: 95, column: 27, scope: !1006)
!1011 = !DILocation(line: 96, column: 44, scope: !1006)
!1012 = !DILocation(line: 96, column: 26, scope: !1006)
!1013 = !DILocation(line: 96, column: 5, scope: !1006)
!1014 = distinct !DISubprogram(name: "operator&=", linkageName: "_ZStaNRSt13_Ios_FmtflagsS_", scope: !2, file: !5, line: 103, type: !1015, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !955)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!1017, !1019, !31}
!1017 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!1019 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !31, size: 64)
!1020 = !DILocalVariable(name: "__a", arg: 1, scope: !1014, file: !5, line: 103, type: !1019)
!1021 = !DILocation(line: 103, column: 29, scope: !1014)
!1022 = !DILocalVariable(name: "__b", arg: 2, scope: !1014, file: !5, line: 103, type: !31)
!1023 = !DILocation(line: 103, column: 48, scope: !1014)
!1024 = !DILocation(line: 104, column: 18, scope: !1014)
!1025 = !DILocation(line: 104, column: 24, scope: !1014)
!1026 = !DILocation(line: 104, column: 22, scope: !1014)
!1027 = !DILocation(line: 104, column: 12, scope: !1014)
!1028 = !DILocation(line: 104, column: 16, scope: !1014)
!1029 = !DILocation(line: 104, column: 5, scope: !1014)
!1030 = distinct !DISubprogram(name: "operator&", linkageName: "_ZStanSt13_Ios_FmtflagsS_", scope: !2, file: !5, line: 83, type: !1031, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !955)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!31, !31, !31}
!1033 = !DILocalVariable(name: "__a", arg: 1, scope: !1030, file: !5, line: 83, type: !31)
!1034 = !DILocation(line: 83, column: 27, scope: !1030)
!1035 = !DILocalVariable(name: "__b", arg: 2, scope: !1030, file: !5, line: 83, type: !31)
!1036 = !DILocation(line: 83, column: 46, scope: !1030)
!1037 = !DILocation(line: 84, column: 43, scope: !1030)
!1038 = !DILocation(line: 84, column: 67, scope: !1030)
!1039 = !DILocation(line: 84, column: 48, scope: !1030)
!1040 = !DILocation(line: 84, column: 5, scope: !1030)
!1041 = distinct !DISubprogram(name: "operator|=", linkageName: "_ZStoRRSt13_Ios_FmtflagsS_", scope: !2, file: !5, line: 99, type: !1015, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !955)
!1042 = !DILocalVariable(name: "__a", arg: 1, scope: !1041, file: !5, line: 99, type: !1019)
!1043 = !DILocation(line: 99, column: 29, scope: !1041)
!1044 = !DILocalVariable(name: "__b", arg: 2, scope: !1041, file: !5, line: 99, type: !31)
!1045 = !DILocation(line: 99, column: 48, scope: !1041)
!1046 = !DILocation(line: 100, column: 18, scope: !1041)
!1047 = !DILocation(line: 100, column: 24, scope: !1041)
!1048 = !DILocation(line: 100, column: 22, scope: !1041)
!1049 = !DILocation(line: 100, column: 12, scope: !1041)
!1050 = !DILocation(line: 100, column: 16, scope: !1041)
!1051 = !DILocation(line: 100, column: 5, scope: !1041)
!1052 = distinct !DISubprogram(name: "operator|", linkageName: "_ZStorSt13_Ios_FmtflagsS_", scope: !2, file: !5, line: 87, type: !1031, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !955)
!1053 = !DILocalVariable(name: "__a", arg: 1, scope: !1052, file: !5, line: 87, type: !31)
!1054 = !DILocation(line: 87, column: 27, scope: !1052)
!1055 = !DILocalVariable(name: "__b", arg: 2, scope: !1052, file: !5, line: 87, type: !31)
!1056 = !DILocation(line: 87, column: 46, scope: !1052)
!1057 = !DILocation(line: 88, column: 43, scope: !1052)
!1058 = !DILocation(line: 88, column: 67, scope: !1052)
!1059 = !DILocation(line: 88, column: 48, scope: !1052)
!1060 = !DILocation(line: 88, column: 5, scope: !1052)
!1061 = distinct !DISubprogram(name: "goodG2B", linkageName: "_Z7goodG2Bv", scope: !29, file: !29, line: 9, type: !558, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !955)
!1062 = !DILocalVariable(name: "data", scope: !1061, file: !29, line: 11, type: !72)
!1063 = !DILocation(line: 11, column: 10, scope: !1061)
!1064 = !DILocation(line: 12, column: 10, scope: !1061)
!1065 = !DILocation(line: 14, column: 10, scope: !1061)
!1066 = !DILocalVariable(name: "result", scope: !1067, file: !29, line: 17, type: !72)
!1067 = distinct !DILexicalBlock(scope: !1061, file: !29, line: 15, column: 5)
!1068 = !DILocation(line: 17, column: 14, scope: !1067)
!1069 = !DILocation(line: 17, column: 23, scope: !1067)
!1070 = !DILocation(line: 17, column: 28, scope: !1067)
!1071 = !DILocation(line: 18, column: 26, scope: !1067)
!1072 = !DILocation(line: 18, column: 9, scope: !1067)
!1073 = !DILocation(line: 20, column: 1, scope: !1061)
!1074 = distinct !DISubprogram(name: "goodB2G", linkageName: "_Z7goodB2Gv", scope: !29, file: !29, line: 22, type: !558, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !955)
!1075 = !DILocalVariable(name: "data", scope: !1074, file: !29, line: 24, type: !72)
!1076 = !DILocation(line: 24, column: 10, scope: !1074)
!1077 = !DILocation(line: 25, column: 10, scope: !1074)
!1078 = !DILocation(line: 27, column: 14, scope: !1074)
!1079 = !DILocation(line: 29, column: 9, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1074, file: !29, line: 29, column: 9)
!1081 = !DILocation(line: 29, column: 14, scope: !1080)
!1082 = !DILocation(line: 29, column: 9, scope: !1074)
!1083 = !DILocalVariable(name: "result", scope: !1084, file: !29, line: 31, type: !72)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !29, line: 30, column: 5)
!1085 = !DILocation(line: 31, column: 14, scope: !1084)
!1086 = !DILocation(line: 31, column: 23, scope: !1084)
!1087 = !DILocation(line: 31, column: 28, scope: !1084)
!1088 = !DILocation(line: 32, column: 26, scope: !1084)
!1089 = !DILocation(line: 32, column: 9, scope: !1084)
!1090 = !DILocation(line: 33, column: 5, scope: !1084)
!1091 = !DILocation(line: 36, column: 19, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1080, file: !29, line: 35, column: 5)
!1093 = !DILocation(line: 36, column: 78, scope: !1092)
!1094 = !DILocation(line: 38, column: 1, scope: !1074)
!1095 = distinct !DISubprogram(name: "main", scope: !29, file: !29, line: 40, type: !641, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !955)
!1096 = !DILocation(line: 42, column: 15, scope: !1095)
!1097 = !DILocation(line: 42, column: 38, scope: !1095)
!1098 = !DILocation(line: 43, column: 5, scope: !1095)
!1099 = !DILocation(line: 44, column: 5, scope: !1095)
!1100 = !DILocation(line: 45, column: 15, scope: !1095)
!1101 = !DILocation(line: 45, column: 34, scope: !1095)
!1102 = !DILocation(line: 46, column: 5, scope: !1095)

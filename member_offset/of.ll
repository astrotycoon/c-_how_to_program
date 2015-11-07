; ModuleID = 'of.cpp'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i32, i32, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i32 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i32, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { %"class.std::locale::facet", %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet" }
%"class.std::num_get" = type { %"class.std::locale::facet" }
%class.A = type { i32, i32 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str = private unnamed_addr constant [6 x i8] c"&a = \00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"sizeof(a) = \00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"&a.var1 = \00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"&A::var1 = \00", align 1
@.str4 = private unnamed_addr constant [12 x i8] c"&A::var2 = \00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"&A::var1 = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"&A::var2 = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"pA = \00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"pA = %p\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_of.cpp, i8* null }]

define internal void @__cxx_global_var_init() section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %a = alloca %class.A, align 4
  %pA = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 4
  %4 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0))
  %5 = bitcast %class.A* %a to i8*
  %6 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPKv(%"class.std::basic_ostream"* %4, i8* %5)
  %7 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %6, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %8 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0))
  %9 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %8, i32 8)
  %10 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %9, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %11 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0))
  %12 = getelementptr inbounds %class.A* %a, i32 0, i32 0
  %13 = bitcast i32* %12 to i8*
  %14 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPKv(%"class.std::basic_ostream"* %11, i8* %13)
  %15 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %14, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %16 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([12 x i8]* @.str3, i32 0, i32 0))
  %17 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEb(%"class.std::basic_ostream"* %16, i1 zeroext true)
  %18 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %17, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %19 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0))
  %20 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEb(%"class.std::basic_ostream"* %19, i1 zeroext true)
  %21 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %20, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %22 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([12 x i8]* @.str3, i32 0, i32 0))
  %23 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %22, i32 0)
  %24 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %23, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %25 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0))
  %26 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"* %25, i32 4)
  %27 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %26, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0), i32 0)
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str6, i32 0, i32 0), i32 4)
  store i32 -1, i32* %pA, align 4
  %30 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0))
  %31 = load i32* %pA, align 4
  %32 = icmp ne i32 %31, -1
  %33 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEb(%"class.std::basic_ostream"* %30, i1 zeroext %32)
  %34 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %33, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %35 = load i32* %pA, align 4
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str8, i32 0, i32 0), i32 %35)
  store i32 0, i32* %pA, align 4
  %37 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0))
  %38 = load i32* %pA, align 4
  %39 = icmp ne i32 %38, -1
  %40 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEb(%"class.std::basic_ostream"* %37, i1 zeroext %39)
  %41 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %40, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %42 = load i32* %pA, align 4
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str8, i32 0, i32 0), i32 %42)
  ret i32 0
}

declare dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140), i8*) #0

declare dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPKv(%"class.std::basic_ostream"*, i8*) #0

declare dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #0

declare dereferenceable(140) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(140)) #0

declare dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEj(%"class.std::basic_ostream"*, i32) #0

declare dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEb(%"class.std::basic_ostream"*, i1 zeroext) #0

declare i32 @printf(i8*, ...) #0

define internal void @_GLOBAL__sub_I_of.cpp() section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}

; ModuleID = 'simple_class.cpp'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%class.my_class = type { i32 (...)**, i32 }

@_ZTV8my_class = linkonce_odr unnamed_addr constant [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI8my_class to i8*), i8* bitcast (void (%class.my_class*)* @_ZN8my_classD2Ev to i8*), i8* bitcast (void (%class.my_class*)* @_ZN8my_classD0Ev to i8*)]
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS8my_class = linkonce_odr constant [10 x i8] c"8my_class\00"
@_ZTI8my_class = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([10 x i8]* @_ZTS8my_class, i32 0, i32 0) }

define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %a_class = alloca %class.my_class, align 4
  %4 = alloca i8*
  %5 = alloca i32
  %6 = alloca i32
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 4
  call void @_ZN8my_classC2Ev(%class.my_class* %a_class)
  invoke void @_ZN8my_class6methodEi(%class.my_class* %a_class, i32 10)
          to label %7 unwind label %9

; <label>:7                                       ; preds = %0
  store i32 0, i32* %1
  store i32 1, i32* %6
  call void @_ZN8my_classD2Ev(%class.my_class* %a_class)
  %8 = load i32* %1
  ret i32 %8

; <label>:9                                       ; preds = %0
  %10 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %4
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %5
  invoke void @_ZN8my_classD2Ev(%class.my_class* %a_class)
          to label %13 unwind label %19

; <label>:13                                      ; preds = %9
  br label %14

; <label>:14                                      ; preds = %13
  %15 = load i8** %4
  %16 = load i32* %5
  %17 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

; <label>:19                                      ; preds = %9
  %20 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  call void @__clang_call_terminate(i8* %21) #4
  unreachable
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN8my_classC2Ev(%class.my_class* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.my_class*, align 4
  store %class.my_class* %this, %class.my_class** %1, align 4
  %2 = load %class.my_class** %1
  %3 = bitcast %class.my_class* %2 to i8***
  store i8** getelementptr inbounds ([4 x i8*]* @_ZTV8my_class, i64 0, i64 2), i8*** %3
  %4 = getelementptr inbounds %class.my_class* %2, i32 0, i32 1
  store i32 1, i32* %4, align 4
  ret void
}

; Function Attrs: nounwind
define linkonce_odr void @_ZN8my_class6methodEi(%class.my_class* %this, i32 %n) #1 align 2 {
  %1 = alloca %class.my_class*, align 4
  %2 = alloca i32, align 4
  store %class.my_class* %this, %class.my_class** %1, align 4
  store i32 %n, i32* %2, align 4
  %3 = load %class.my_class** %1
  %4 = load i32* %2, align 4
  %5 = getelementptr inbounds %class.my_class* %3, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
define linkonce_odr void @_ZN8my_classD2Ev(%class.my_class* %this) unnamed_addr #1 align 2 {
  %1 = alloca %class.my_class*, align 4
  store %class.my_class* %this, %class.my_class** %1, align 4
  %2 = load %class.my_class** %1
  %3 = bitcast %class.my_class* %2 to i8***
  store i8** getelementptr inbounds ([4 x i8*]* @_ZTV8my_class, i64 0, i64 2), i8*** %3
  %4 = getelementptr inbounds %class.my_class* %2, i32 0, i32 1
  store i32 0, i32* %4, align 4
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #2 {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #5
  call void @_ZSt9terminatev() #4
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

define linkonce_odr void @_ZN8my_classD0Ev(%class.my_class* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.my_class*, align 4
  %2 = alloca i8*
  %3 = alloca i32
  store %class.my_class* %this, %class.my_class** %1, align 4
  %4 = load %class.my_class** %1
  invoke void @_ZN8my_classD2Ev(%class.my_class* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.my_class* %4 to i8*
  call void @_ZdlPv(i8* %6) #6
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.my_class* %4 to i8*
  call void @_ZdlPv(i8* %11) #6
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i8** %2
  %14 = load i32* %3
  %15 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #3

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind }
attributes #3 = { nobuiltin nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }
attributes #6 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.5.0-4ubuntu2 (tags/RELEASE_350/final) (based on LLVM 3.5.0)"}

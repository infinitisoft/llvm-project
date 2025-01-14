; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -mattr=+d,+zfh,+zvfh,+v -target-abi=ilp32d \
; RUN:     -verify-machineinstrs < %s | FileCheck %s
; RUN: llc -mtriple=riscv64 -mattr=+d,+zfh,+zvfh,+v -target-abi=lp64d \
; RUN:     -verify-machineinstrs < %s | FileCheck %s

declare <2 x float> @llvm.experimental.constrained.fptrunc.v2f32.v2f64(<2 x double>, metadata, metadata)
define <2 x float> @vfptrunc_v2f64_v2f32(<2 x double> %va) {
; CHECK-LABEL: vfptrunc_v2f64_v2f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e32, mf2, ta, ma
; CHECK-NEXT:    vfncvt.f.f.w v9, v8
; CHECK-NEXT:    vmv1r.v v8, v9
; CHECK-NEXT:    ret
  %evec = call <2 x float> @llvm.experimental.constrained.fptrunc.v2f32.v2f64(<2 x double> %va, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <2 x float> %evec
}

declare <2 x half> @llvm.experimental.constrained.fptrunc.v2f16.v2f64(<2 x double>, metadata, metadata)
define <2 x half> @vfptrunc_v2f64_v2f16(<2 x double> %va) {
; CHECK-LABEL: vfptrunc_v2f64_v2f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e32, mf2, ta, ma
; CHECK-NEXT:    vfncvt.rod.f.f.w v9, v8
; CHECK-NEXT:    vsetvli zero, zero, e16, mf4, ta, ma
; CHECK-NEXT:    vfncvt.f.f.w v8, v9
; CHECK-NEXT:    ret
  %evec = call <2 x half> @llvm.experimental.constrained.fptrunc.v2f16.v2f64(<2 x double> %va, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <2 x half> %evec
}

declare <2 x half> @llvm.experimental.constrained.fptrunc.v2f16.v2f32(<2 x float>, metadata, metadata)
define <2 x half> @vfptrunc_v2f32_v2f16(<2 x float> %va) {
; CHECK-LABEL: vfptrunc_v2f32_v2f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e16, mf4, ta, ma
; CHECK-NEXT:    vfncvt.f.f.w v9, v8
; CHECK-NEXT:    vmv1r.v v8, v9
; CHECK-NEXT:    ret
  %evec = call <2 x half> @llvm.experimental.constrained.fptrunc.v2f16.v2f32(<2 x float> %va, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <2 x half> %evec
}

declare <4 x float> @llvm.experimental.constrained.fptrunc.v4f32.v4f64(<4 x double>, metadata, metadata)
define <4 x float> @vfptrunc_v4f64_v4f32(<4 x double> %va) {
; CHECK-LABEL: vfptrunc_v4f64_v4f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; CHECK-NEXT:    vfncvt.f.f.w v10, v8
; CHECK-NEXT:    vmv.v.v v8, v10
; CHECK-NEXT:    ret
  %evec = call <4 x float> @llvm.experimental.constrained.fptrunc.v4f32.v4f64(<4 x double> %va, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <4 x float> %evec
}

declare <4 x half> @llvm.experimental.constrained.fptrunc.v4f16.v4f64(<4 x double>, metadata, metadata)
define <4 x half> @vfptrunc_v4f64_v4f16(<4 x double> %va) {
; CHECK-LABEL: vfptrunc_v4f64_v4f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; CHECK-NEXT:    vfncvt.rod.f.f.w v10, v8
; CHECK-NEXT:    vsetvli zero, zero, e16, mf2, ta, ma
; CHECK-NEXT:    vfncvt.f.f.w v8, v10
; CHECK-NEXT:    ret
  %evec = call <4 x half> @llvm.experimental.constrained.fptrunc.v4f16.v4f64(<4 x double> %va, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <4 x half> %evec
}

declare <4 x half> @llvm.experimental.constrained.fptrunc.v4f16.v4f32(<4 x float>, metadata, metadata)
define <4 x half> @vfptrunc_v4f32_v4f16(<4 x float> %va) {
; CHECK-LABEL: vfptrunc_v4f32_v4f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e16, mf2, ta, ma
; CHECK-NEXT:    vfncvt.f.f.w v9, v8
; CHECK-NEXT:    vmv1r.v v8, v9
; CHECK-NEXT:    ret
  %evec = call <4 x half> @llvm.experimental.constrained.fptrunc.v4f16.v4f32(<4 x float> %va, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <4 x half> %evec
}

declare <8 x float> @llvm.experimental.constrained.fptrunc.v8f32.v8f64(<8 x double>, metadata, metadata)
define <8 x float> @vfptrunc_v8f64_v8f32(<8 x double> %va) {
; CHECK-LABEL: vfptrunc_v8f64_v8f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e32, m2, ta, ma
; CHECK-NEXT:    vfncvt.f.f.w v12, v8
; CHECK-NEXT:    vmv.v.v v8, v12
; CHECK-NEXT:    ret
  %evec = call <8 x float> @llvm.experimental.constrained.fptrunc.v8f32.v8f64(<8 x double> %va, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <8 x float> %evec
}

declare <8 x half> @llvm.experimental.constrained.fptrunc.v8f16.v8f64(<8 x double>, metadata, metadata)
define <8 x half> @vfptrunc_v8f64_v8f16(<8 x double> %va) {
; CHECK-LABEL: vfptrunc_v8f64_v8f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e32, m2, ta, ma
; CHECK-NEXT:    vfncvt.rod.f.f.w v12, v8
; CHECK-NEXT:    vsetvli zero, zero, e16, m1, ta, ma
; CHECK-NEXT:    vfncvt.f.f.w v8, v12
; CHECK-NEXT:    ret
  %evec = call <8 x half> @llvm.experimental.constrained.fptrunc.v8f16.v8f64(<8 x double> %va, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <8 x half> %evec
}

declare <8 x half> @llvm.experimental.constrained.fptrunc.v8f16.v8f32(<8 x float>, metadata, metadata)
define <8 x half> @vfptrunc_v8f32_v8f16(<8 x float> %va) {
; CHECK-LABEL: vfptrunc_v8f32_v8f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e16, m1, ta, ma
; CHECK-NEXT:    vfncvt.f.f.w v10, v8
; CHECK-NEXT:    vmv.v.v v8, v10
; CHECK-NEXT:    ret
  %evec = call <8 x half> @llvm.experimental.constrained.fptrunc.v8f16.v8f32(<8 x float> %va, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <8 x half> %evec
}

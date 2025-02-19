; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=riscv32 -mattr=+d,+zfh,+zvfh,+v -target-abi=ilp32d \
; RUN:     -verify-machineinstrs < %s | FileCheck %s
; RUN: llc -mtriple=riscv64 -mattr=+d,+zfh,+zvfh,+v -target-abi=lp64d \
; RUN:     -verify-machineinstrs < %s | FileCheck %s

declare <2 x half> @llvm.experimental.constrained.sqrt.v2f16(<2 x half>, metadata, metadata)

define <2 x half> @vfsqrt_v2f16(<2 x half> %v) {
; CHECK-LABEL: vfsqrt_v2f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e16, mf4, ta, ma
; CHECK-NEXT:    vfsqrt.v v8, v8
; CHECK-NEXT:    ret
  %r = call <2 x half> @llvm.experimental.constrained.sqrt.v2f16(<2 x half> %v, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <2 x half> %r
}

declare <4 x half> @llvm.experimental.constrained.sqrt.v4f16(<4 x half>, metadata, metadata)

define <4 x half> @vfsqrt_v4f16(<4 x half> %v) {
; CHECK-LABEL: vfsqrt_v4f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e16, mf2, ta, ma
; CHECK-NEXT:    vfsqrt.v v8, v8
; CHECK-NEXT:    ret
  %r = call <4 x half> @llvm.experimental.constrained.sqrt.v4f16(<4 x half> %v, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <4 x half> %r
}

declare <8 x half> @llvm.experimental.constrained.sqrt.v8f16(<8 x half>, metadata, metadata)

define <8 x half> @vfsqrt_v8f16(<8 x half> %v) {
; CHECK-LABEL: vfsqrt_v8f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e16, m1, ta, ma
; CHECK-NEXT:    vfsqrt.v v8, v8
; CHECK-NEXT:    ret
  %r = call <8 x half> @llvm.experimental.constrained.sqrt.v8f16(<8 x half> %v, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <8 x half> %r
}

declare <16 x half> @llvm.experimental.constrained.sqrt.v16f16(<16 x half>, metadata, metadata)

define <16 x half> @vfsqrt_v16f16(<16 x half> %v) {
; CHECK-LABEL: vfsqrt_v16f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 16, e16, m2, ta, ma
; CHECK-NEXT:    vfsqrt.v v8, v8
; CHECK-NEXT:    ret
  %r = call <16 x half> @llvm.experimental.constrained.sqrt.v16f16(<16 x half> %v, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <16 x half> %r
}

declare <32 x half> @llvm.experimental.constrained.sqrt.v32f16(<32 x half>, metadata, metadata)

define <32 x half> @vfsqrt_v32f16(<32 x half> %v) {
; CHECK-LABEL: vfsqrt_v32f16:
; CHECK:       # %bb.0:
; CHECK-NEXT:    li a0, 32
; CHECK-NEXT:    vsetvli zero, a0, e16, m4, ta, ma
; CHECK-NEXT:    vfsqrt.v v8, v8
; CHECK-NEXT:    ret
  %r = call <32 x half> @llvm.experimental.constrained.sqrt.v32f16(<32 x half> %v, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <32 x half> %r
}

declare <2 x float> @llvm.experimental.constrained.sqrt.v2f32(<2 x float>, metadata, metadata)

define <2 x float> @vfsqrt_v2f32(<2 x float> %v) {
; CHECK-LABEL: vfsqrt_v2f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e32, mf2, ta, ma
; CHECK-NEXT:    vfsqrt.v v8, v8
; CHECK-NEXT:    ret
  %r = call <2 x float> @llvm.experimental.constrained.sqrt.v2f32(<2 x float> %v, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <2 x float> %r
}

declare <4 x float> @llvm.experimental.constrained.sqrt.v4f32(<4 x float>, metadata, metadata)

define <4 x float> @vfsqrt_v4f32(<4 x float> %v) {
; CHECK-LABEL: vfsqrt_v4f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e32, m1, ta, ma
; CHECK-NEXT:    vfsqrt.v v8, v8
; CHECK-NEXT:    ret
  %r = call <4 x float> @llvm.experimental.constrained.sqrt.v4f32(<4 x float> %v, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <4 x float> %r
}

declare <8 x float> @llvm.experimental.constrained.sqrt.v8f32(<8 x float>, metadata, metadata)

define <8 x float> @vfsqrt_v8f32(<8 x float> %v) {
; CHECK-LABEL: vfsqrt_v8f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e32, m2, ta, ma
; CHECK-NEXT:    vfsqrt.v v8, v8
; CHECK-NEXT:    ret
  %r = call <8 x float> @llvm.experimental.constrained.sqrt.v8f32(<8 x float> %v, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <8 x float> %r
}

declare <16 x float> @llvm.experimental.constrained.sqrt.v16f32(<16 x float>, metadata, metadata)

define <16 x float> @vfsqrt_v16f32(<16 x float> %v) {
; CHECK-LABEL: vfsqrt_v16f32:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 16, e32, m4, ta, ma
; CHECK-NEXT:    vfsqrt.v v8, v8
; CHECK-NEXT:    ret
  %r = call <16 x float> @llvm.experimental.constrained.sqrt.v16f32(<16 x float> %v, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <16 x float> %r
}

declare <2 x double> @llvm.experimental.constrained.sqrt.v2f64(<2 x double>, metadata, metadata)

define <2 x double> @vfsqrt_v2f64(<2 x double> %v) {
; CHECK-LABEL: vfsqrt_v2f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 2, e64, m1, ta, ma
; CHECK-NEXT:    vfsqrt.v v8, v8
; CHECK-NEXT:    ret
  %r = call <2 x double> @llvm.experimental.constrained.sqrt.v2f64(<2 x double> %v, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <2 x double> %r
}

declare <4 x double> @llvm.experimental.constrained.sqrt.v4f64(<4 x double>, metadata, metadata)

define <4 x double> @vfsqrt_v4f64(<4 x double> %v) {
; CHECK-LABEL: vfsqrt_v4f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 4, e64, m2, ta, ma
; CHECK-NEXT:    vfsqrt.v v8, v8
; CHECK-NEXT:    ret
  %r = call <4 x double> @llvm.experimental.constrained.sqrt.v4f64(<4 x double> %v, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <4 x double> %r
}

declare <8 x double> @llvm.experimental.constrained.sqrt.v8f64(<8 x double>, metadata, metadata)

define <8 x double> @vfsqrt_v8f64(<8 x double> %v) {
; CHECK-LABEL: vfsqrt_v8f64:
; CHECK:       # %bb.0:
; CHECK-NEXT:    vsetivli zero, 8, e64, m4, ta, ma
; CHECK-NEXT:    vfsqrt.v v8, v8
; CHECK-NEXT:    ret
  %r = call <8 x double> @llvm.experimental.constrained.sqrt.v8f64(<8 x double> %v, metadata !"round.dynamic", metadata !"fpexcept.strict")
  ret <8 x double> %r
}

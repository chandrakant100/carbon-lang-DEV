// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// CHECK:STDERR: fail_value_as_type.carbon:[[@LINE+3]]:15: Cannot implicitly convert from `{.a: i32}` to `type`.
// CHECK:STDERR: var x: {.a = 1};
// CHECK:STDERR:               ^
var x: {.a = 1};

// CHECK:STDOUT: package {
// CHECK:STDOUT:   %.loc10_14: i32 = int_literal 1
// CHECK:STDOUT:   %.loc10_12: i32 = stub_reference %.loc10_14
// CHECK:STDOUT:   %.loc10_15.1: type = struct_type {.a: i32}
// CHECK:STDOUT:   %.loc10_15.2: {.a: i32} = struct_value (%.loc10_12)
// CHECK:STDOUT:   %x: ref <error> = var "x"
// CHECK:STDOUT: }

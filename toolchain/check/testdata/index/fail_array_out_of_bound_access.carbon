// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

var a: [i32; 1] = (12,);
// CHECK:STDERR: fail_array_out_of_bound_access.carbon:[[@LINE+3]]:17: Index `2` is past the end of `[i32; 1]`.
// CHECK:STDERR: var b: i32 = a[2];
// CHECK:STDERR:                 ^
var b: i32 = a[2];

// CHECK:STDOUT: package {
// CHECK:STDOUT:   %.loc7_14: i32 = int_literal 1
// CHECK:STDOUT:   %.loc7_15: type = array_type %.loc7_14, i32
// CHECK:STDOUT:   %a: ref [i32; 1] = var "a"
// CHECK:STDOUT:   %.loc7_20.1: i32 = int_literal 12
// CHECK:STDOUT:   %.loc7_20.2: i32 = stub_reference %.loc7_20.1
// CHECK:STDOUT:   %.loc7_23.1: type = tuple_type (i32)
// CHECK:STDOUT:   %.loc7_23.2: (i32,) = tuple_value (%.loc7_20.2)
// CHECK:STDOUT:   %.loc7_23.3: [i32; 1] = array_value %.loc7_23.2
// CHECK:STDOUT:   assign %a, %.loc7_23.3
// CHECK:STDOUT:   %b: ref i32 = var "b"
// CHECK:STDOUT:   %.loc11_16: i32 = int_literal 2
// CHECK:STDOUT:   %.loc11_17.1: ref i32 = array_index %a, <error>
// CHECK:STDOUT:   %.loc11_17.2: i32 = bind_value %.loc11_17.1
// CHECK:STDOUT:   assign %b, %.loc11_17.2
// CHECK:STDOUT: }

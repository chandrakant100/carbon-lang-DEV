// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

fn Run0() {}
fn Run1(a: i32) {}
fn Run2(a: i32, b: i32) {}

fn Main() {
  // CHECK:STDERR: fail_param_count.carbon:[[@LINE+6]]:7: No matching callable was found.
  // CHECK:STDERR:   Run0(1);
  // CHECK:STDERR:       ^
  // CHECK:STDERR: fail_param_count.carbon:[[@LINE-8]]:1: Function cannot be used: Received 1 argument(s), but require 0 argument(s).
  // CHECK:STDERR: fn Run0() {}
  // CHECK:STDERR: ^
  Run0(1);
  // CHECK:STDERR: fail_param_count.carbon:[[@LINE+6]]:7: No matching callable was found.
  // CHECK:STDERR:   Run0(0, 1);
  // CHECK:STDERR:       ^
  // CHECK:STDERR: fail_param_count.carbon:[[@LINE-15]]:1: Function cannot be used: Received 2 argument(s), but require 0 argument(s).
  // CHECK:STDERR: fn Run0() {}
  // CHECK:STDERR: ^
  Run0(0, 1);

  // CHECK:STDERR: fail_param_count.carbon:[[@LINE+6]]:7: No matching callable was found.
  // CHECK:STDERR:   Run1();
  // CHECK:STDERR:       ^
  // CHECK:STDERR: fail_param_count.carbon:[[@LINE-22]]:1: Function cannot be used: Received 0 argument(s), but require 1 argument(s).
  // CHECK:STDERR: fn Run1(a: i32) {}
  // CHECK:STDERR: ^
  Run1();
  // CHECK:STDERR: fail_param_count.carbon:[[@LINE+6]]:7: No matching callable was found.
  // CHECK:STDERR:   Run1(0, 1);
  // CHECK:STDERR:       ^
  // CHECK:STDERR: fail_param_count.carbon:[[@LINE-29]]:1: Function cannot be used: Received 2 argument(s), but require 1 argument(s).
  // CHECK:STDERR: fn Run1(a: i32) {}
  // CHECK:STDERR: ^
  Run1(0, 1);

  // CHECK:STDERR: fail_param_count.carbon:[[@LINE+6]]:7: No matching callable was found.
  // CHECK:STDERR:   Run2();
  // CHECK:STDERR:       ^
  // CHECK:STDERR: fail_param_count.carbon:[[@LINE-36]]:1: Function cannot be used: Received 0 argument(s), but require 2 argument(s).
  // CHECK:STDERR: fn Run2(a: i32, b: i32) {}
  // CHECK:STDERR: ^
  Run2();
  // CHECK:STDERR: fail_param_count.carbon:[[@LINE+6]]:7: No matching callable was found.
  // CHECK:STDERR:   Run2(0);
  // CHECK:STDERR:       ^
  // CHECK:STDERR: fail_param_count.carbon:[[@LINE-43]]:1: Function cannot be used: Received 1 argument(s), but require 2 argument(s).
  // CHECK:STDERR: fn Run2(a: i32, b: i32) {}
  // CHECK:STDERR: ^
  Run2(0);
}

// CHECK:STDOUT: package {
// CHECK:STDOUT:   %.loc7 = fn_decl @Run0
// CHECK:STDOUT:   %.loc8 = fn_decl @Run1
// CHECK:STDOUT:   %.loc9 = fn_decl @Run2
// CHECK:STDOUT:   %.loc11 = fn_decl @Main
// CHECK:STDOUT: }
// CHECK:STDOUT:
// CHECK:STDOUT: fn @Run0() {
// CHECK:STDOUT: !entry:
// CHECK:STDOUT:   return
// CHECK:STDOUT: }
// CHECK:STDOUT:
// CHECK:STDOUT: fn @Run1(%a: i32) {
// CHECK:STDOUT: !entry:
// CHECK:STDOUT:   return
// CHECK:STDOUT: }
// CHECK:STDOUT:
// CHECK:STDOUT: fn @Run2(%a: i32, %b: i32) {
// CHECK:STDOUT: !entry:
// CHECK:STDOUT:   return
// CHECK:STDOUT: }
// CHECK:STDOUT:
// CHECK:STDOUT: fn @Main() {
// CHECK:STDOUT: !entry:
// CHECK:STDOUT:   %.loc18_8.1: i32 = int_literal 1
// CHECK:STDOUT:   %.loc18_8.2: i32 = stub_reference %.loc18_8.1
// CHECK:STDOUT:   %.loc25_8.1: i32 = int_literal 0
// CHECK:STDOUT:   %.loc25_8.2: i32 = stub_reference %.loc25_8.1
// CHECK:STDOUT:   %.loc25_11.1: i32 = int_literal 1
// CHECK:STDOUT:   %.loc25_11.2: i32 = stub_reference %.loc25_11.1
// CHECK:STDOUT:   %.loc40_8.1: i32 = int_literal 0
// CHECK:STDOUT:   %.loc40_8.2: i32 = stub_reference %.loc40_8.1
// CHECK:STDOUT:   %.loc40_11.1: i32 = int_literal 1
// CHECK:STDOUT:   %.loc40_11.2: i32 = stub_reference %.loc40_11.1
// CHECK:STDOUT:   %.loc55_8.1: i32 = int_literal 0
// CHECK:STDOUT:   %.loc55_8.2: i32 = stub_reference %.loc55_8.1
// CHECK:STDOUT:   return
// CHECK:STDOUT: }

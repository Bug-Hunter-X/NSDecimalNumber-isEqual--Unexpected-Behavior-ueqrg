# NSDecimalNumber isEqual: Unexpected Behavior

This repository demonstrates a subtle bug related to comparing `NSDecimalNumber` objects in Objective-C.  Direct use of `isEqual:` can lead to incorrect results even when the numbers are mathematically identical.

The `NSDecimalNumberBug.m` file contains code illustrating the issue. The `NSDecimalNumberBugSolution.m` demonstrates a robust solution using `NSDecimalCompare`.

## Problem
`NSDecimalNumber` objects, while precise for decimal arithmetic, don't always compare as expected with `isEqual:`. Minor differences in internal representation can cause unexpected inequality.

## Solution
Instead of `isEqual:`, use `NSDecimalCompare` for reliable comparison of `NSDecimalNumber` values.  This function compares the numerical values directly, avoiding issues with internal representation differences.
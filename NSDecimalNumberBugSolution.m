Instead of relying on `isEqual:` for `NSDecimalNumber` comparison, utilize `NSDecimalCompare`. This function provides a reliable numerical comparison, circumventing the issues caused by variations in the internal representation.

```objectivec
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDecimalNumber *num1 = [NSDecimalNumber decimalNumberWithString:@
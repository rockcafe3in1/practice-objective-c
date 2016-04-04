//
//  chapter15-number-usage.m
//  prog1
//
//  Created by LIANG ZHANG on 4/4/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main_nsnumber(int argc, char* argv[])
{
    @autoreleasepool {
        
        /* Local variable declaration */
        NSNumber *intNumber, *myNumber, *floatNumber, *doubleNumber;
        NSInteger myInt;
        
        /* Integer value */
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog (@"%li", (long) myInt);
        
        /* Long value */
        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog (@"%lx", [myNumber longValue]);
        
        /* Char value */
        myNumber = [NSNumber numberWithChar: 'X'];
        NSLog (@"%c", [myNumber charValue]);
        
        /* Float value */
        floatNumber = [NSNumber numberWithFloat: 100.00];
        NSLog (@"%g", [floatNumber floatValue]);
        
        /* Double value */
        doubleNumber = [NSNumber numberWithDouble:12345e+15];
        NSLog (@"%lg", [doubleNumber doubleValue]);
        
        /* Wrong access case */
        NSLog (@"%li", (long) [myNumber integerValue]);
        
        /* Test two numbers for equality */
        if ([intNumber isEqualToNumber: floatNumber] == YES)
            NSLog(@"Numbers are equal");
        else
            NSLog(@"Numbers are not equal");
        
        /* Test if one number is <, ==, or > second Number */
        if ([intNumber compare: myNumber] == NSOrderedDescending)
            NSLog (@"First number is less than second");
        
        /* Error case demonstration */
        /* You cannot change the value of a previously created NSNumber object */
        myNumber = [[NSNumber alloc] initWithInt: 50];
        // NSLog (@"%i", [myNumber initWithInt: 100]);
        
        /* Number objects is created by @expression */
        intNumber = @100;
        myInt = [intNumber integerValue];
        NSLog (@"%li", (long) myInt);
        
        myNumber = @'X';
        NSLog (@"%c", [myNumber charValue]);
        
        floatNumber = @100.0f;
        NSLog (@"%g", [floatNumber floatValue]);
        
    }
    return 0;
}
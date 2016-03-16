//
//  chapter3-integer-arithmetic.m
//  prog1
//
//  Created by LIANG ZHANG on 3/17/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

// Arithmetic expressions

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        int     a = 25;
        int     b = 2;
        float   c = 25.0;
        float   d = 2.0;
        
        NSLog (@"6 + a / 5 * b = %i", 6 + a / 5 * b);
        NSLog (@"a / b * b = %i", a / b * b);
        NSLog (@"c / d * d = %f", c / d * d);
        NSLog (@"-a = %i", -a);
    }
    
    return 0;
}
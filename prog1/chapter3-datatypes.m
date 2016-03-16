//
//  demo-datatype.m
//  DemoDataEncapsulation
//
//  Created by LIANG ZHANG on 3/15/16.
//  Copyright © 2016 com.lzhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main_datatype (int argc, const char * argv[])
{
    @autoreleasepool {
        int integerVar = 100;
        float floatVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'W';
        NSLog (@"integerVar=: %i", integerVar);
        NSLog (@"floatVar=: %f", floatVar);     // 6 decimal places
        NSLog (@"doubleVar=: %e", doubleVar);   // Scientices number
        NSLog (@"doubleVar=: %g", doubleVar);
        NSLog (@"charVar=: %c", charVar);
    }
    
    return 0;
}
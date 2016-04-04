//
//  chapter15-nsstring-usage.m
//  prog1
//
//  Created by LIANG ZHANG on 4/4/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char* argv[])
{
    @autoreleasepool {
        
        /* Print a simple constant string */
        NSString *str = @"Programming is fun";
        NSLog (@"%@", str);
        
        
        /* Use %@ to display integer object */
        NSNumber *intNumber = @100;
        NSLog (@"%@", intNumber);
        
        /* Print 'X' object charater by using %@ */
        NSNumber *charValue = @'X';
        NSLog (@"%@", charValue);
        
        /* DO NOT DO THAT: Cannot use %c to print a object */
        // NSLog (@"%c", charValue);
        // Instead of, convert char object to char
        NSLog (@"%c", [charValue charValue]);

    }
    return 0;
}
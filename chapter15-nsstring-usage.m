//
//  chapter15-nsstring-usage.m
//  prog1
//
//  Created by LIANG ZHANG on 4/4/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main_string_basic(int argc, char* argv[])
{
    @autoreleasepool {
        
        /* Branch A: immutable string case */
        
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
        
        /* Could i use NSString's subclass NSConstantString */
        /* Compiler show me that incompatible pointer with NSString Object */
        NSConstantString *constString = @"Hey! Liang, have a nice day";
        NSLog (@"%@", constString);
        
        /* Talk about %@ specifier
         * The NSlog format characters %@ can be used to display not just NSString objects
         * but other objects as well.
         */
        NSNumber *intNumber2 = @100;
        NSLog (@"%@", intNumber2);
        
        /* Override description method to print what you want */
        /* - (NSString*) description
         *   {
         *       NSString stringWithFormat: @"%i/%i"
         *   }
         */
        // YourClass *yourClass = @"your-class";
        // NSLog (@"%@", yourClass);
        
        /* The description method allows you to display your objects in a meaningful way */
        // sum = [f1 add: f2]
        // NSLog (@"%@, %@, sum is %@", f1, f2, sum);
        
        /* Branch B: Mutable string case */
        
        
    }
    return 0;
}
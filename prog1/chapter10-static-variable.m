//
//  chapter10-static-variable.m
//  prog1
//
//  Created by LIANG ZHANG on 3/27/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

/* Today's star - Static Variable */
static int gCounter;

/* The interface section */
@interface FractionStaticVar: NSObject

+(instancetype) allocF;
+(int) count;

@end

/* The implementation section */
@implementation FractionStaticVar

/* Customize inheritance method from parent */
+(instancetype) allocF
{
    extern int gCounter;
    ++gCounter;
    return [FractionStaticVar alloc];
}

/* Once again, customize inheriatnce method from parent */
+(int) count
{
    extern int gCounter;
    return gCounter;
}

@end

/* The executing section */
int main (int argc, char * argv[])
{
    FractionStaticVar *a;
    FractionStaticVar *b;
    FractionStaticVar *c;
    
    NSLog (@"FractionStaticVar allocated : %i\n", [FractionStaticVar count]);
    
    a = [[FractionStaticVar allocF] init];
    b = [[FractionStaticVar allocF] init];
    c = [[FractionStaticVar allocF] init];
    
    /* Inovking class method counter, instread of instance method
     * that means you can not use instance a, b or c, like this:
     *  
     * [a count]
     */
    NSLog (@"FractionStaticVar allocated : %i\n", [FractionStaticVar count]);
    
}

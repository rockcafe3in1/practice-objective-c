//
//  chapter7-accessing-property.m
//  prog1
//
//  Created by LIANG ZHANG on 4/7/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, char* argv[])
{
    
    @autoreleasepool {
        
        Fraction *myFraction = [[Fraction alloc] init];
        
        /* set fraction to 1/3 using the dot operator */
        myFraction.numerator = 1;
        myFraction.denominator = 3;
        
        /* display the fraction's numerator and denominator */
        NSLog (@"The numerator is %i, and the deniminator is %i", myFraction.numerator, myFraction.denominator);
        
    }
    
    return 0;
}
//
//  NSObject_chapter2_data_encapsulation.m
//  prog1
//
//  Created by LIANG ZHANG on 3/14/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

// Program to access instance variables - cont'd

#import <Foundation/Foundation.h>


//---- @interface section ----

// There no need to declare duplicate Class in single project
// So i rename class Fraction in 'chapter02-class-object.m'
// from Fraction class to FractionClassObject class
@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;

@end


//---- @implementation section ----

@implementation Fraction
{
    // Instance variables
    int numerator;
    int denominator;
}

// InstanceMethodAndClassMethod
-(void) print
{
    NSLog (@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
    numerator = n;
}

-(void) setDenominator: (int) d
{
    denominator = d;
}

-(int) numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
}

@end


//----  @program section ----

int main_data_encapsulation (int argc, const char * argv[])
{
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        
        // Set fraction to 1/3
        
        [myFraction setNumerator: 1];
        [myFraction setDenominator: 3];
        
        // Display the fraction using our two new methods
        
        NSLog (@"The value of myFraction is: %i/%i",
               [myFraction numerator],
               [myFraction denominator]);
    }
    
    // Don't forget you have to return zero
    return 0;
}

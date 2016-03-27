//
//  main.m
//  practiceclassobject
//
//  Created by LIANG ZHANG on 12/20/15.
//  Copyright © 2015 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

// Could i put @interface section into header(.h)?
// What does a header file should be?
// interface section
@interface FractionClassObject : NSObject

// Property And Method Declarations
// Books says that you also list items known as properties

// Candidates A: Method
// > Instance method
//  In Chapter 7, “More on Classes,” you’ll see how
//  methods that take more than one argument are identified
-(void) print;
-(void) setNumberator: (int) n;
-(void) setDenominator: (int) d;
// > Class method
// works on class itself
// For class method it will be demonstration soon

// Candidates B: Properties
// Properties demo will be appended later...

@end

// implementation section
@implementation FractionClassObject
{
    
    // proper declaration for the variable is made before
    // it is used in the program.
	// Instance Variables declartion
	int numerator;
	int denominator;
}

/* Customize init method */
-(instancetype)initWith: (int) n over: (int)d
{
    self = [super init];
    if (self) {
        [self setTo: n over: d];
    }
    return self;
}

/* Customize init method */
-(void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}

-(void) print
{
	NSLog (@"Print fraction result: %i/%i", numerator, denominator);
}

-(void) setNumberator: (int) n
{
	numerator = n;
}

-(void) setDenominator: (int) d
{
	denominator = d;
}

@end

// ---- @Program section ----
int main_class_object(int argc, const char * argv[])
{
	@autoreleasepool {
		// Create instance and initilize object
		FractionClassObject *myFraction;
		// myFraction = [Fraction alloc];
		// myFraction = [myFraction init];

		// Or other code to initilize Fraction
		// myFraction = [[Fraction alloc] init];

		// Or your just type single one line code
		// myFraction = [FractionClassObject new];

        /* Customize init method */
        myFraction =[[FractionClassObject alloc] initWith: 1 over: 3];
        
		// Set fraction to 1/3
		// [myFraction setNumberator: 1];
		// [myFraction setDenominator: 3];

		NSLog (@"The value of myFraction is:");
		[myFraction print];
	}
	return 0;
}





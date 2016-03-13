//
//  main.m
//  practiceclassobject
//
//  Created by LIANG ZHANG on 12/20/15.
//  Copyright © 2015 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

// interface section
@interface Fraction : NSObject

-(void) print;
-(void) setNumberator: (int) n;
-(void) setDenominator: (int) d;

@end

// implementation section
@implementation Fraction
{
	// Here is instance variable declartion
	int numerator;
	int denominator;
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

// Program section
int main(int argc, const char * argv[])
{
	@autoreleasepool {
		// Create instance and initilize object
		Fraction *myFraction;
		// myFraction = [Fraction alloc];
		// myFraction = [myFraction init];

		// Or other code to initilize Fraction
		// myFraction = [[Fraction alloc] init];

		// Or your just type single one line code
		myFraction = [Fraction new];

		// Set fraction to 1/3
		[myFraction setNumberator: 1];
		[myFraction setDenominator: 3];

		NSLog (@"The value of myFraction is:");
		[myFraction print];
	}
	return 0;
}





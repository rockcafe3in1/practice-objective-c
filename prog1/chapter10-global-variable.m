//
//  chapter10-global-variable.m
//  prog1
//
//  Created by LIANG ZHANG on 3/26/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

/* The global variable */
int gGlobalVar = 5;

/* The Foo class interface section */
@interface Foo : NSObject

-(void) setgGlobalVar: (int) var;

@end

/* The foo class implementation section */
@implementation Foo

-(void) setgGlobalVar:(int) var
{
    /* Althrough it is in same file, we just want
     * you know that take use of extern qualifier
     * if you access global variable
     */
	extern int gGlobalVar;
	gGlobalVar = var;
}

@end

/* The main entry section */
int main (int argc, char * argv[])
{
	@autoreleasepool {
		Foo *myFoo = [[Foo alloc] init];
		NSLog (@"The value of gGlobalVar is : %d\n", gGlobalVar);
		
		[myFoo setgGlobalVar: 100];
		NSLog (@"New value is : %d\n", gGlobalVar);
	}
	return 0;
}
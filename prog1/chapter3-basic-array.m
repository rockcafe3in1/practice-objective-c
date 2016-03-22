//
//  chapter3-basic-array.m
//  prog1
//
//  Created by LIANG ZHANG on 3/22/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>


// ----  interface section  ----
@interface SampleClass: NSObject

- (int *) getRandom;

@end

// ---- implementation section ----
@implementation SampleClass

/* If you want to return a single-dimensional array
 * from a function, you would have to declare a fun
 * -ction returning a pointer as in the following 
 * example
 */
- (int *) getRandom
{
    // If without static qulifier, what will happen?
    // Address of stack memory associated with local
    // variable 'r' returned
    
    // Remember that Objective-C does not advocate to
    // reutrn the address of a local variable to outside
    // of the function, you would have to define the
    // local variable as static variable.
    static int r[10];
    int i;

    // The srand() function sets its argument seed
    // as the seed for a new sequence of pseudo-random
    // numbers to be returned by rand()

    // This sequence are repeatable by calling srand()
    // with the same seed value
    srand((unsigned int)time(NULL));

    for (i = 0; i < 10; i++) {
        r[i] = rand();
        NSLog (@"r[%d] = %d\n", i, r[i]);
    }

    return r;
}

@end

// ---- main section ----
int main (int argc, const char * argv[]) {
    
    @autoreleasepool {
        // A pointer to an int
        int *p;
        int i;
        SampleClass *mSample;
        
        mSample = [[SampleClass alloc] init];
        p = [mSample getRandom];
        // i + *p + *(p + 1)
        for (i = 0; i < 10; i++) {
            NSLog (@"*(p + %d) = %d", i, *(p + i));
        }
        // is there any other way to print array p?
        // Coming soon.....
    }
    
    return 0;
}

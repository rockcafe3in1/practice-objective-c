//
//  chapter10-enum-variable.m
//  prog1
//
//  Created by LIANG ZHANG on 3/27/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

/* The entry section */
int main (int argc, char * argv[])
{
    
    @autoreleasepool {
        
        /* Declara enum data type */
        enum month {january = 1, february, march, april, may, june,
            july, auguest, september, october, november,
            december};
        /* Create enum variable */
        enum month amonth;
        int days;
        
        NSLog (@"Enter month number: ");
        scanf ("%d", &amonth);  // That's not a NSString object again
        
        /* Analysis the month you choose */
        switch (amonth) {
            case january:
            case march:
            case may:
            case july:
            case auguest:
            case october:
            case december:
                days = 31;
                break;
            case april:
            case june:
            case september:
            case november:
                days = 30;
                break;
            case february:
                days = 28;
                break;
            default:
                NSLog (@"bad month number");
                days = 0;
                break;
        }
        
        if (days != 0)
            NSLog (@"Number of days is : %i\n", days);
        
        if (amonth == february)
            NSLog (@"... or 29 if it's a leap year\n");
    }
    
    return 0;
}
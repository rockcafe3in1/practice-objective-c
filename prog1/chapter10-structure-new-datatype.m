//
//  chapter10-structure-new-datatype.m
//  prog1
//
//  Created by LIANG ZHANG on 3/28/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, char* argv[])
{
    @autoreleasepool {
        
        /* Defination of structure */
        struct date {
            int month;
            int day;
            int year;
        };
        
        /* Declaration of structure */
        struct date today;
        
        /* Assign meaningful value */
        today.year = 1980;
        today.month = 3;
        today.day = 28;
        
        /* The formatted symbol - %.2i accept zero number before integer
         * @"%.2i" - 80, it print 80
         * @"%.4i" - 80, it print 0080
         * @"%04i" - 80, it print 0080
         */
        NSLog (@"Today's date is %i/%i/%.2i.", today.month,
               today.day, today.year % 100);
    }
    return 0;
}
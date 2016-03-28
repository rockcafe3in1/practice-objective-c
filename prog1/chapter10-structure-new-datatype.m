//
//  chapter10-structure-new-datatype.m
//  prog1
//
//  Created by LIANG ZHANG on 3/28/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

#define LOGSAY(month, day, year) \
    NSLog (@"Today's date is %i/%i/%.2i.\n", (month), (day), (year) % 100)

int main (int argc, char* argv[])
{
    @autoreleasepool {
        
        /* Defination of structure */
        struct date {
            int month;
            int day;
            int year;
        };
        
        /* When finish define strcture, there is no storeage to be 
         * reserved inside the computer. The following statement 
         * declares a variable to be of type struct date and, there-
         * fore, does reserve memory for storing the tree integer
         * members of the structure variable today
         */
        
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
        LOGSAY (today.month, today.day, today.year);

        /* practice using pointer and -> operator */
        struct date* ptr;
        ptr = &today;
        
        /* Modify day saved in well-build memory */
        ptr->day += 1;
        ptr->year = 2016;
        
        /* Can you use preprocessor to replace log printing function? */
        LOGSAY (ptr->month, ptr->day, ptr->year);

    }
    return 0;
}

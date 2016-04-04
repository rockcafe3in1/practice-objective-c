//
//  chapter13-sizeof-usage.m
//  prog1
//
//  Created by LIANG ZHANG on 3/30/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>




int main_sizeof (int argc, char* argv[])
{
    @autoreleasepool {
        
        int intval;
        int intarray[] = {100, 200, 300, 400};
        
        NSLog (@"The size of int is : %ubytes\n", (unsigned int) sizeof(int));
        NSLog (@"The size of intval is : %ubytes\n", (unsigned int)sizeof(intval));
        NSLog (@"The size of specified array is : %ubytes\n", (unsigned int)sizeof(intarray));
        
        /* Calculate size of Object */
        // sizeof (object_pointer)
        // sizeof (*object_pointer)
        
        /* If data is defined as an array of struc data_entry
         * The following expression show to the size of array
         */
        typedef struct data_entry {
            int value;
            char message[50];
        } data_t;
        data_t dataarray[10];
        
        int length = sizeof (dataarray) / sizeof (data_t);
        NSLog (@"%d\n", length);
        
        
    }
    
    return 0;
}
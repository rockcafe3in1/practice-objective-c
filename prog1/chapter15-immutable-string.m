//
//  chapter15-immutable-string.m
//  prog1
//
//  Created by LIANG ZHANG on 4/6/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>


int main_string(int argc, char* argv[])
{
    @autoreleasepool {
        
        
        /* Working with immutable string (Formal string case) */
        
        /* Local variables declaration */
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSUInteger uint;
        NSString *res;
        NSComparisonResult result;
        
        /* Count the number of characters */
        uint = [str1 length];
        NSLog (@"The length of str1 is : %lu", uint);
        NSLog (@"Once again, length of str1 is : %lu", [str1 length]);
        
        /* Copy one string to another */
        res = [NSString stringWithString: str1];
        NSLog (@"Print copy string : %@ (copy)", res);
        
        /* Copy one string to the end of another */
        str2 = [str1 stringByAppendingString: str2];
        NSLog (@"Concatenation string : %@", str2);
        
        /* Test if two strings are equal */
        if ([str1 isEqualToString: str2] == YES)
            NSLog (@"str1 == str2");
        else
            NSLog (@"str1 != str2");
        if ([str1 isEqualToString: res] == YES)
            NSLog (@"str1 == res");
        else
            NSLog (@"str1 != res");
        
        /* Test if one string is <, == or > than another */
        // [str1 compare: str2] Ascending Descending Same
        result = [str1 compare: str2];
        if (result == NSOrderedAscending)
            NSLog (@"str1 < str2");
        else if (result == NSOrderedSame)
            NSLog (@"str1 == str2");
        else if (result == NSOrderedDescending)
            NSLog (@"str1 > str2");
        else
            NSLog (@"Am i correct? No");
        
        /* Convert a string to uppercase */
        res = [str1 uppercaseString];
        NSLog (@"Uppercase conversion: %@", res);
        NSLog (@"Once again, Uppercase conversion: %s", [res UTF8String]);
        
        /* Convert a string to lowercase */
        res = [str1 lowercaseString];
        NSLog (@"Lowercase conversion: %@", res);
        
        
    }
    
    return 0;
}
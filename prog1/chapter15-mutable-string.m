//
//  chapter15-mutable-string.m
//  prog1
//
//  Created by LIANG ZHANG on 4/5/16.
//  Copyright © 2016 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>


/* We will show you some usage tip about mutable string */
int main_mutable_string(int argc, char* argv[])
{
    @autoreleasepool {
        
        
        NSString *str1 = @"This is string A";
        NSMutableString *mstr;
        NSRange substr; /* typedef structure */
        
        
        /* Create mutable string from nonmutable */
        mstr = [NSMutableString stringWithString: str1];
        NSLog (@"%@", mstr);
        
        /* Insert characters */
        [mstr insertString: @" mutable" atIndex:7];
        NSLog (@"%@", mstr);
        
        /* Concatenation if insert at end */
        [mstr insertString: @" and string B" atIndex: [mstr length]];
        NSLog (@"%@", mstr);
        
        /* Or can use appendString directly */
        [mstr appendString: @" and string C"];
        NSLog (@"%@", mstr);
        
        /* Delete substring based on rang */
        [mstr deleteCharactersInRange: NSMakeRange(16, 13)];
        NSLog (@"%@", mstr);
        
        /* Find range first and then use it for deletion */
        substr = [mstr rangeOfString: @"string B and " ];
        if (substr.location != NSNotFound) {
            [mstr deleteCharactersInRange: substr];
            NSLog (@"%@", mstr);
        }
        
        /* Replace mutable string with new one */
        [mstr setString: @"This is string A"];
        NSLog (@"%@", mstr);
        
        /* Replace a range of chars with another */
        [mstr replaceCharactersInRange: NSMakeRange(8, 8) withString: @"a mutable string"];
        NSLog (@"%@", mstr);
        
        // Not finish.....
    }
    
    return 0;
}
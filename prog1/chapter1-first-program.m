//
//  main.m
//  prog1
//
//  Created by LIANG ZHANG on 12/15/15.
//  Copyright © 2015 liang1zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main_unused_entry (int argc,const char * argv[]){
	@autoreleasepool {
		NSLog (@"Programming Is Fun...");
		NSLog (@"Hey! This is Liang speaking...");
		NSLog (@"Once again, this is my first Objective-C program...");
		NSLog (@"Pay attention on my new git user and email...");
		NSLog (@"Tell me how to upload my first program to github");
		NSLog (@"Practice to checkout an new branch, which is called dev02");
		NSLog (@"Any code changes should exsit in dev02 branch firstly then");
		NSLog (@"master branch receive all commits from dev branch, like dev02");
		NSLog (@"This work flow can be a good chooise!!!");
		NSLog (@"It's a whole new world...");
		NSLog (@"You could compile your objective-c program from your commandline");
		NSLog (@"try this command: $ clang -fobjc-arc main.m -o prog1");
		// Separate a long string by using `\n` chararicter
		NSLog (@"What's the best programming font for mac and xcode? \
               I would try my new programming font (PT-Mono 18.0)");
		// concat two string object
		NSLog (@"String A String B");
		// Choosen your new programming font - Andale Mono Regular
		NSLog (@"However i also wanna try my new programming font \
               - Andale Mono Regular");
		// Or you can try other font - PT-Mono 18

		// Practice wrap your long comment with new lines, instead of a single
		// line. That could be more nice if you make use good code formatting
		// utilities.

		// Do you know how to format your code, that means code formatter will
		// handle line break job

		// Display the following text
		NSLog (@"\nIn Objective-C, lowercase leters are significant.\nmain is where program execution begin.\nOpen and closed braces enclose program statement in a routine.\nAll program statements must be terminated by a semicolon.");
		NSLog (@"string A \
               string B \
               string C");

		// Display variable value
		int value1, value2, sum;

		value1 = 50;
		value2 = 25;
		sum = value1 + value2;
		NSLog (@"The sum of 50 and 25 is %i", sum);
		NSLog (@"The sum of %i and %i is %i", value1, value2, sum);
		NSLog (@"The sum of %i and %i is %i", value1, value2, value1 + value2);
	}
	return 0;
}
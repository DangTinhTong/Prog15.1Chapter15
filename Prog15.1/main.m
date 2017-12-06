//
//  main.m
//  Prog15.1
//
//  Created by Tống Đăng Tình on 12/6/17.
//  Copyright © 2017 Tống Đăng Tình. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        
        // integer number
        intNumber =[NSNumber numberWithInteger:100];
        myInt =[intNumber integerValue];
        NSLog(@"%li", (long) myInt);
        
    // long value
        myNumber = [NSNumber numberWithLong:0xabcdef];
        NSLog(@"%lx",[myNumber longValue]);
    
        // Char value
        myNumber = [NSNumber numberWithChar:'X'];
        NSLog(@"%c",[myNumber charValue]);
        
        // float value
        floatNumber = [NSNumber numberWithFloat:100.43];
        NSLog(@"%g",[floatNumber floatValue ]);
        
        //double
        myNumber = [NSNumber numberWithDouble:1234e+10];
        NSLog(@"%lg",[myNumber doubleValue]);
        
        // Wrong access here
        NSLog(@"%li",(long) [myNumber integerValue]);
        
        // Test two numbers for equality
        if([intNumber isEqualToNumber:floatNumber]==YES)
            NSLog(@"Numbers are equal");
        else
            NSLog(@"Numbers are not equal");
        
        // Test if one Number is <, == . > second number
        if([intNumber compare:myNumber]==NSOrderedAscending)
            NSLog(@"First number is less than second");
    }
    return 0;
}

//
//  main.m
//  TimesTwo
//
//  Created by Apple on 16/1/24.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p",currentTime);
        NSDate *startTime = currentTime;
        
        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p",currentTime);
        NSLog(@"The address of the original object is %p",startTime);
        
        currentTime = nil;
        NSLog(@"currentTime's value is %p",currentTime);
    }
    return 0;
}

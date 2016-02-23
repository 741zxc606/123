//
//  main.m
//  TimeAfterTIme
//
//  Created by Apple on 16/1/22.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        @autoreleasepool {
//            NSDate *now = [NSDate date];
            NSDate *now = [[NSDate alloc] init];
            NSLog(@"This NSDate object lives at %p",now);
            NSLog(@"The date is %@",now);
            
            double seconds = [now timeIntervalSince1970];
            NSLog(@"It has been %f seconds scince the start of 1970.",seconds);
            
            //发送伪造的消息，来查看错误提示......
//            double testSeconds = [NSDate timeIntervalScince1970];
//            NSDate *testNow = [now date];
            
            //输入错误的选择器名
//            testSeconds = [now foolIntervalSince1970];
            //输入错误！小写的‘i’and's'
//            testSeconds = [now foolintervalsince1970];
            
            NSDate *later = [now dateByAddingTimeInterval:100000];
            NSLog(@"In 100,000 seconds it will be %@",later);
            
            NSCalendar *cal = [NSCalendar currentCalendar];
            NSLog(@"My calendar is %@",[cal calendarIdentifier]);
            
            unsigned long day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                               inUnit:NSMonthCalendarUnit
                                              forDate:now];
            NSLog(@"This is day %lu of the month",day);
        }
    }
    return 0;
}

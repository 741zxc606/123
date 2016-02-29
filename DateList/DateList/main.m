//
//  main.m
//  DateList
//
//  Created by Apple on 16/1/27.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //创建三个NSDate对象
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        //创建空数组
        NSMutableArray *dateList = [NSMutableArray array];
        
        //将两个NSDate对象加入新创建的数组
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        //将yesterday指针插入数组的起始位置
        [dateList insertObject:yesterday atIndex:0];
        
        //遍历数组
        for (NSDate *d in dateList) {
            NSLog(@"Here is a date : %@",d);
        }
        
        //删除yesterday指针
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@",dateList[0]);
        
          //创建一个数组包含这三个NSDate对象
//        NSArray *datelist = @[now,tomorrow,yesterday];
        
//        //输出其中的两个对象
//        NSLog(@"The first date is %@", datelist[0]);
//        NSLog(@"The third date is %@", datelist[2]);
//        
//        //包含多少个对象
//        NSLog(@"There are %lu dates",[datelist count]);
        
//        NSLog(@"The fourth date is %@",datelist[3]);//崩溃！
        
          //遍历数组
//        NSUInteger dateCount = [datelist count];
//        for (int i = 0;i < dateCount;i++){
//            NSDate *d = datelist[i];
//        for (NSDate *d in datelist) {
//            NSLog(@"Here is a date: %@",d);
//        }
        
            
        }
    }
    return 0;
}

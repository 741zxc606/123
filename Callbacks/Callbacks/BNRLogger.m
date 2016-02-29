//
//  BNRLogger.m
//  Callbacks
//
//  Created by Apple on 16/2/29.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

- (NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    if(!dateFormatter)
    {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"cresated dateFormattrer");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

- (void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@",self.lastTimeString);
}

//收到一定字节数的数据后会被调用
- (void)connection:(NSURLConnection *)connection
    didReceiveData:(nonnull NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    
    //如果NSMutableData对象还不存在，就创建它
    if (!_incomingData){
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}

//最后一部分数据处理完毕后会被调用
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:_incomingData
                                             encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters",[string length]);
    
    //如果需要输出获取的全部数据，则可以取消下面这行代码的注释
    //NSLog(@"The whole string is %@,string");
}

//获取数据失败时会被调用
- (void)connection:(NSURLConnection *)connection
 didFailWithError:(NSError *)error
{
    NSLog(@"connection failed:%@",[error localizedDescription]);
    _incomingData = nil;
}

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}

@end

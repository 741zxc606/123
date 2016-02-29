//
//  BNRLogger.h
//  Callbacks
//
//  Created by Apple on 16/2/29.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject
    <NSURLConnectionDelegate, NSURLConnectionDataDelegate>

{
    NSMutableData *_incomingData;
}
@property (nonatomic) NSDate *lastTime;
- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;

@end

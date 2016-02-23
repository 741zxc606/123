//
//  BNRAsset.h
//  BMITime-1
//
//  Created by Apple on 16/1/30.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic, weak) BNREmployee *holder;
@property (nonatomic) unsigned int resaleValue;

@end

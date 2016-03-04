//
//  BNRAppliance.h
//  Appliances
//
//  Created by Apple on 16/3/4.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject

@property (nonatomic,copy) NSString *productName;
@property (nonatomic) int voltage;
- (instancetype)initWithProductName:(NSString *)pn;
@end

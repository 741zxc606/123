//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by Apple on 16/3/4.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance

@property (readonly) NSSet *ownerNames;
- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n;
- (void)addOwnerName:(NSString *)n;
- (void)removeOwneName:(NSString *)n;

@end

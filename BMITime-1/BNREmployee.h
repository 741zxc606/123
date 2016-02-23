//
//  BNREmployee.h
//  BMITime-1
//
//  Created by Apple on 16/1/29.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson


@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic,copy) NSSet *assets;
- (double)yearOfEmployment;
- (void)addAssets:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end

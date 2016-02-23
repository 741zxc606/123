//
//  BNREmployee.m
//  BMITime-1
//
//  Created by Apple on 16/1/29.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

//类扩展
@interface BNREmployee ()
{
    NSMutableSet *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;

@end

@implementation BNREmployee

//属性的存取方法
- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}

- (void)addAssets:(BNRAsset *)a
{
    //assets 是否为 nil?
    if(!_assets){
      
        //创建数组
        _assets = [[NSMutableSet alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (unsigned int)valueOfAssets
{
    //累加物品的转销价值
    unsigned int sum = 0;
    for (BNRAsset *a in _assets){
        sum += [a resaleValue];
    }
    return sum;
}

- (double)yearOfEmployment
{
    //是否拥有一个非nil的hireDate?
    if(self.hireDate){
       //NSTimeInterval是double类型
        NSDate *now = [NSDate date];
        NSTimeInterval sesc = [now timeIntervalSinceDate:self.hireDate];
        return sesc / 331557600.0; //每年的秒数
    }else{
        return 0;
    }
}

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>",self.employeeID,self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"deallocating %@",self);
}

@end
